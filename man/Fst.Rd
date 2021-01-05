\name{Fst}
\alias{Fst}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculates the Fst from the conditional kinship matrix }
\description{
  Calculates the Fst from a conditional kinship matrix.
}
\usage{
Fst(rval, N)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{rval}{ is a conditional kinship matrix, normally obtained by the functions 'R' and 'rel.cond' in the Biodem library. }
  \item{N}{ the vector of effective populations size, nominally obtained by dividing the total population size by three. Starting form surname data, effective population size coincides with the number of marriages }
}
\details{
  The use of the Fst function follows Harpending and Jenkins 1974, and Jorde 1982. It gives an estimate of Wright's Fst, which is a measure of between-subdivision genetic heterogeneity.
}
\value{
  Fst returns one numeric value.
}
\references{ Harpending, H. C. and T. jenkins. 1974. !Kung population structure. In: J. F. Crow and C. F. Denniston (eds.), Genetic distance, pp 137-161. Plenum Press, NY.

Jorde, L. B. 1982. The genetic structure of the Utah mormons: migration analysis. Human Biology 54(3): 583-597. }
\author{ Federico C. F. Calboli \email{f.calboli@gmail.com} }
\note{ ... }
\examples{
# Swedlund data again...
data(P); data(S); data(N)
# starting with how many cycles to equilibrium
x<-mal.eq(S,P,N)
# calculation of phi
phi<-mal.phi(S,P,N,x)
# calculation of the conditional kinship matrix
cond<-mal.cond(phi,N)
# finally! we get the Fst value
fst<-Fst(cond,N)
fst

# starting from a raw marriage records dataset:
data(valley)
tot <- sur.freq(valley,valley$PAR,valley$SURM,valley$SURF)
tot # a frequency table calculated above all the surnames
iso.matrix <- uri(tot)
iso.matrix # an unbiased random isonymy matrix
reg <- rri(tot)
reg # a coefficient of unbiased Regional Random Isonymy
kin.cond <- rel.cond(iso.matrix,reg)
kin.cond # a conditional kinship matrix
N <- colSums(tot) # effective population size
fst<-Fst(kin.cond,N)
fst
}
\keyword{ array }
\keyword{ manip }
\keyword{ misc }
