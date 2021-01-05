\name{mal.cond}
\alias{mal.cond}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculates a Conditional Kinship matrix }
\description{
  The function ``mal.cond'' calculates a R conditional kinship matrix starting from a kinship matrix obtained by the applicatio of the Malecot migration model on a colum stochastic migration matrix.
}
\usage{
mal.cond(PHI, N)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{PHI}{ \code{PHI} is a square and symmetrical kinship matrix, possibly the output of the function Phi }
  \item{N}{ \code{N} is the effectiove population vector }
}
\details{
  Much more useful than the Phi matrix, the conditional kinship R matrix is the basis for further analysis by means of Mantel tests, Procrustes rotations and cluster analysis.
}
\value{
  Returns a square symmetrical matrix.
}
\references{ Jorde, L. B. 1982. The genetic structure of the Utah mormons: migration analysis. Human Biology 54(3): 583-597. }
\author{ Federico C. F. Calboli \email{f.calboli@gmail.com} }
\note{ ... }
\seealso{ \code{\link{mal.phi}} for the calculation of "absolute" kinship values }
\examples{
# using Swedlund data again...
data(S); data(P); data(N)
x<-mal.eq(S,P,N)
phi<-mal.phi(S,P,N,x)
cond.mat<-mal.cond(phi,N)
cond.mat
}
\keyword{ array }
\keyword{ manip }
