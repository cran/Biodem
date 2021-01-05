\name{mal.phi}
\alias{mal.phi}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculates a kinship matrix using the Malecot Migration Model }
\description{
  Calculates a kinship matrix using the Malecot Migration Model, in the form described by L. B. Jorde 1982.
}
\usage{
mal.phi(S, P, N, n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{S}{ the sistematic pressure matrix, where the diagonal elements are 1-sk, with sk the sistematic pressure for the k-th population, and the non diagonal elements are 0 }
  \item{P}{ the column stochastic migration matrix, possibly obtained using col.sto on the "raw" migration matrix }
  \item{N}{ the vector of effective populations, where each element is the population size for all the n populations divided by 3 }
  \item{n}{ the number of iterations needed to reach the equilibrium, calculated by the function Mal.eq }
}
\details{
  The Malecot model is simply an iterative markow-chain-like process that gives rise to an asymptotic growth curve, so that an equilibrium is reached after a number of iterations.
}
\value{
  Returns a square and symmetrical matrix.
}
\references{ Imaizumi, Y., N. E. Morton and D. E. Harris. 1970. Isolation by distance in artificial populations. Genetics 66: 569-582.

Jorde, L. B. 1982. The genetic structure of the Utah mormons: migration analysis. Human Biology 54(3): 583-597. }
\author{ Federico C. F. Calboli \email{f.calboli@gmail.com} }
\note{ ... }
\seealso{ \code{\link{mal.eq}} for the function generating the number of cycles needed to reach the asymptotic value }
\examples{
# using Swedlund data again...
data(S); data(P); data(N)
x<-mal.eq(S,P,N)
phi<-mal.phi(S,P,N,x)
phi
}
\keyword{ array }
\keyword{ iteration }
