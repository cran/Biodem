\name{mtx.exp}
\alias{mtx.exp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculates the n-th power of a matrix }
\description{
  Calculates the n-th power of a matrix.
}
\usage{
mtx.exp(X, n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{ a square matrix }
  \item{n}{ the exponential value }
}
\details{
  This function calculates (efficiently!) the n-th power of a matrix.
}
\value{
  Takes a matrix and returns a matrix.
}
\references{ ... }
\author{ Vincente Canto Cassola and Martin Maechler }
\note{ Original code by VCC "beautyfied" by MM }
\examples{
test<-matrix(c(1:16), 4,4)
pow.test<-mtx.exp(test,10)
pow.test
}
\keyword{ array }
\keyword{ manip }
\keyword{ methods }
