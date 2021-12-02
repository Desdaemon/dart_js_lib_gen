use scoped_threadpool::Pool;
use std::sync::{
    mpsc::{channel, Receiver, Sender},
    Arc, Mutex, RwLock,
};

use lazy_static::lazy_static;

lazy_static! {
    static ref POOL: RwLock<Pool> = Arc::new(Mutex::new(Pool::new(num_cpus::get() as u32)));
}

pub struct ParIter<T>(T);

pub trait IntoParIter: IntoIterator {
    fn into_par_iter(self) -> ParIter<Self::IntoIter>;
}

impl<T> IntoParIter for T
where
    T: IntoIterator,
{
    fn into_par_iter(self) -> ParIter<Self::IntoIter> {
        ParIter(self.into_iter())
    }
}

pub struct ParMap<I, F, R>
where
    I: Iterator,
    F: Fn(I::Item) -> R,
{
    iter: I,
    func: F,
    channel: (Sender<R>, Receiver<R>),
}

impl<T> ParIter<T> {
    fn map<F, R>(self, func: F) -> ParMap<T, F, R>
    where
        T: Iterator,
        F: Fn(T::Item) -> R,
    {
        ParMap {
            iter: self.0,
            func,
            channel: channel(),
        }
    }
}

impl<T, F, R> Iterator for ParMap<T, F, R>
where
    T: Iterator,
    T::Item: Send,
    F: Fn(T::Item) -> R + Copy + Send,
    R: Send + Sync,
{
    type Item = R;

    fn next(&mut self) -> Option<Self::Item> {
        let item = self.iter.next()?;
        let (tx, rx) = &self.channel;
        let pool = POOL.lock().expect("Failed to acquire pool");
        let out = pool.scoped(|scope| {
            let tx = tx.clone();
            // We only need the mapper to be Send, so explicitly borrow f here.
            let func = self.func;
            scope.execute(move || {
                tx.send(func(item)).expect("Failed to send");
            });
            rx.recv().expect("Failed to receive")
        });
        Some(out)
    }
}
