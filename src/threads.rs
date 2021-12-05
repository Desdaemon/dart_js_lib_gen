use scoped_threadpool::Pool;
use std::sync::mpsc::{channel, Sender};

pub enum ParallelMap<I, F, R>
where
    I: Iterator,
    F: FnMut(I::Item) -> R,
{
    Raw(ParallelMapRaw<I, F>),
    Processed(std::vec::IntoIter<R>),
}

pub struct ParallelMapRaw<I, F> {
    iter: I,
    func: F,
    threads: u32,
}

impl<I, F, R> Iterator for ParallelMap<I, F, R>
where
    I: Iterator,
    I::Item: Send,
    F: FnMut(I::Item) -> R + Send + Copy,
    R: Send + Sync,
{
    type Item = R;
    fn next(&mut self) -> Option<Self::Item> {
        match self {
            Self::Processed(iter) => iter.next(),
            Self::Raw(ParallelMapRaw {
                threads,
                iter,
                func,
            }) => {
                let proc = {
                    let mut pool = Pool::new(*threads);
                    let (tx, rx): (Sender<R>, _) = channel();
                    pool.scoped(|scope| {
                        let count = iter
                            .map(|item| {
                                let tx = tx.clone();
                                let mut func = *func;
                                scope.execute(move || {
                                    tx.send(func(item)).unwrap();
                                })
                            })
                            .count();
                        (0..count)
                            .map(move |_| rx.recv().unwrap())
                            .collect::<Vec<_>>()
                            .into_iter()
                    })
                };
                *self = Self::Processed(proc);
                self.next()
            }
        }
    }
}

pub trait MapPar: Iterator + Sized {
    /// Similar to [map_par](MapPar::map_par), but allows specifying the number of threads to use.
    fn map_par_with<F, R>(self, threads: u32, func: F) -> ParallelMap<Self, F, R>
    where
        Self::Item: Send,
        F: FnMut(Self::Item) -> R + Send + Copy,
        R: Send + Sync,
    {
        ParallelMap::Raw(ParallelMapRaw {
            iter: self,
            func,
            threads,
        })
    }

    /// Maps the elements of this iterator in parallel.
    /// The iterator returned does not preserve encounter order.
    fn map_par<F, R>(self, func: F) -> ParallelMap<Self, F, R>
    where
        Self::Item: Send,
        F: FnMut(Self::Item) -> R + Send + Copy,
        R: Send + Sync,
    {
        self.map_par_with(num_cpus::get() as u32, func)
    }
}

impl<T> MapPar for T where T: Iterator + Sized {}
