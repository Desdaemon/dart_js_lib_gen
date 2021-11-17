use scoped_threadpool::Pool;
use std::panic::{RefUnwindSafe, UnwindSafe};
use std::sync::mpsc;

pub fn map_par<T, F, R>(
    items: impl Iterator<Item = T>,
    num_threads: Option<u32>,
    func: F,
) -> impl Iterator<Item = R>
where
    T: Send + UnwindSafe,
    F: Fn(T) -> R + Send + Copy + RefUnwindSafe,
    R: Send + Sync,
{
    let num_threads = num_threads.unwrap_or(8);
    let mut pool = Pool::new(num_threads);
    let (tx, rx): (mpsc::Sender<R>, _) = mpsc::channel();
    pool.scoped(move |s| {
        let mut count = 0;
        for item in items {
            count += 1;
            let tx = tx.clone();
            s.execute(move || {
                tx.send(func(item)).unwrap();
            })
        }
        (0..count).map(move |_| rx.recv().unwrap())
    })
}
