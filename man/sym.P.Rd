\name{sym.P}
\alias{sym.P}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculate the symmetric column stochastic matrix }
\description{
  Used to turn the asymmetric column stochastic matrix into a symmetric column stochastic matric.
}
\usage{
sym.P(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ \code{x} is a column stochastic matrix }
}
\details{
  The function calculates the symmetric matrix from the asymmetric column stochastic matrix, leaving the diagonal unchanged and averaging m[i,j] and m[j,i] as (m[i,j]+m[j,i])/2. The computed average substitutes each pair of values in the new symmetric column stochastic matrix.
}
\value{
  Returns a matrix.
}
\references{ Jorde, L. B. 1982. The genetic structure of the Utah mormons: migration analysis. Human Biology 54(3): 583-597. }
\author{ Federico C. F. Calboli \email{f.calboli@gmail.com} }
\note{ ... }
\examples{
data(P)
symmetric<-sym.P(P)
}
\keyword{ array }
\keyword{ manip }
