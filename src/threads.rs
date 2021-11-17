use anyhow::Result;
use scoped_threadpool::Pool;
use std::panic::{RefUnwindSafe, UnwindSafe};
use std::sync::mpsc;

pub fn map_par<T, F, R>(
    items: impl Iterator<Item = T>,
    num_threads: Option<u32>,
    func: F,
) -> Result<impl Iterator<Item = R>>
where
    T: Send + UnwindSafe,
    F: Fn(T) -> R + Send + Copy + RefUnwindSafe,
    R: Send + Sync,
{
    let mut res = vec![];
    let num_threads = num_threads.unwrap_or(8);
    let mut pool = Pool::new(num_threads);
    let (tx, rx): (mpsc::Sender<R>, _) = mpsc::channel();
    pool.scoped(|s| -> Result<()> {
        let mut active = 0;
        for item in items {
            if active == num_threads {
                for _ in 0..num_threads {
                    res.push(rx.recv()?);
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
        for _ in 0..active {
            res.push(rx.recv()?);
        }
        s.join_all();
        Ok(())
    })?;
    Ok(res.into_iter())
}
