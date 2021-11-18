use scoped_threadpool::Pool;
use std::sync::mpsc;

pub trait MapPar: Iterator + Sized {
    fn map_par<'a, F, R>(self, func: F) -> Box<dyn Iterator<Item = R> + 'a>
    where
        Self::Item: Send,
        F: FnMut(Self::Item) -> R + Send + Copy,
        R: Send + Sync + 'a,
    {
        self.map_par_with(num_cpus::get() as u32, func)
    }

    fn map_par_with<'a, F, R>(self, threads: u32, mut func: F) -> Box<dyn Iterator<Item = R> + 'a>
    where
        Self::Item: Send,
        F: FnMut(Self::Item) -> R + Send + Copy,
        R: Send + Sync + 'a,
    {
        let mut pool = Pool::new(threads);
        let (tx, rx): (mpsc::Sender<R>, _) = mpsc::channel();
        Box::new(pool.scoped(move |scope| {
            let count = self
                .map(|item| {
                    let tx = tx.clone();
                    scope.execute(move || {
                        tx.send(func(item)).unwrap();
                    })
                })
                .count();
            // Downgrading the closure's lifetime to be the same as R.
            (0..count).map(Box::new(move |_| rx.recv().unwrap()) as Box<dyn Fn(_) -> _ + 'a>)
        }))
    }
}

impl<T: Iterator + Sized> MapPar for T {}
