\name{mal.eq}
\alias{mal.eq}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculates the asymptotic generation for the Malecot model }
\description{
  Mal.eq calculates the Malecot model iteratively, stopping when one more cycle adds 0 to every value of the matrix obtained by the model. Once equilibrium is reached, Mal.eq returns the number of cycles ("generations") needed to reach it.
}
\usage{
mal.eq(S, P, N)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{S}{ is the Sistematic pressure matrix. }
  \item{P}{ is the colum-stochastic migration matrix. }
  \item{N}{ is the vector of effective population size. }
}
\details{
  The use of mal.eq is necessary before the calculation of the Malecot model proper because the value returned by Mal.eq is one of the arguments of the Malecot model function Phi.
}
\value{
  Returns one numeric value.
}
\references{ Imaizumi, Y., N. E. Morton and D. E. Harris. 1970. Isolation by distance in artificial populations. Genetics 66: 569-582.

Jorde, L. B. 1982. The genetic structure of the Utah mormons: migration analysis. Human Biology 54(3): 583-597.

Swedlund, A. C., L. B. Jorde and J. H. Mielke. 1984. Population structure in the Connecticut valley. I. Marital migration. American Journal of Physical Anthropology 65: 61-70 }
\author{ Federico C. F. Calboli \email{f.calboli@gmail.com} }
\note{
  This function has been coerced to use "only" six significant digits.
  ...
  }
\seealso{ \code{\link{mal.phi}} for the function using the output of 'mal.eq' }
\examples{
# the data is originally from a paper by Swedlund et al. 1984.
data(S); data(P); data(N)
mal.eq(S,P,N)
}
\keyword{ array }
\keyword{ iteration }
\keyword{ methods }
