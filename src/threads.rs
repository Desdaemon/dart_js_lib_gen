use scoped_threadpool::Pool;
use std::sync::mpsc;

pub fn map_par<T, F, R>(
    items: impl Iterator<Item = T>,
    num_threads: Option<u32>,
    mut func: F,
) -> impl Iterator<Item = R>
where
    T: Send,
    F: FnMut(T) -> R + Send + Copy,
    R: Send + Sync,
{
    let mut res = vec![];
    let num_threads = num_threads.unwrap_or(8);
    let mut pool = Pool::new(num_threads);
    let (tx, rx): (mpsc::Sender<R>, _) = mpsc::channel();
    pool.scoped(|s| {
        let mut active = 0;
        for item in items {
            if active == num_threads {
                for _ in 0..num_threads {
                    res.push(rx.recv().unwrap());
                }
                s.join_all();
                active = 0;
            }
            let tx = tx.clone();
            s.execute(move || {
                tx.send(func(item)).unwrap();
            });
            active += 1;
        }
    });
    res.into_iter()
}
