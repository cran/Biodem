\name{rel.phi}
\alias{rel.phi}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculates an 'a priori' kinship matrix from isonymy data }
\description{
  "rel.phi" calculates an 'a priori' kinship matrix starting from isonymy data.
}
\usage{
rel.phi(x,R, method="A")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ is a square Unbiased Random Isonymy matrix, possibly obtained using the "uri" function on the raw surname data }
  \item{R}{ is an unbiased estimate of Regional Random Isonymy, calculated by the function "rri" }
  \item{method}{ a character string specifying the method to be used in the calculation of the coefficients. The available options are "A" and "B". Both the methods give similar results. The "A" method is given as the default option 
}}
\details{
  The function implements Relethford's method to calculate kinship coefficients starting from surname data. 
}
\value{
  Returns a square symmetric 'a priori' kinship matrix. 
}

\references{ Relethford, J. H. 1988. Estimation of kinship and genetic distance from
surnames. Human Biology, 60(3): 475-492.}
\author{ Federico C. F. Calboli and Alessio Boattini \email{alessio.boattini2@unibo.it} }
\note{
  The term 'a priori kinship' refers to kinship relative to a founding population
}
\seealso{ \code{\link{uri}} to calculate Unbiased Random Isonymy starting from tables of surname frequencies, \code{\link{rri}} to calculate an an unbiased estimate of Regional Random Isonymy, \code{\link{rel.cond}} to calculate a conditional kinship matrix from isonymy data}
\examples{
# starting from a raw marriage records dataset:
data(valley)
tot <- sur.freq(valley,valley$PAR,valley$SURM,valley$SURF)
tot # a frequency table calculated above all the surnames
iso.matrix <- uri(tot)
iso.matrix # an unbiased random isonymy matrix
reg <- rri(tot)
reg # a coefficient of unbiased Regional Random Isonymy
kin <- rel.phi(iso.matrix,reg)
kin # an 'a priori' kinship matrix

#starting from a generic surname frequency table
data(surnames)
surnames # a made-up dataset
iso.matrix <- uri(surnames)
iso.matrix # an unbiased random isonymy matrix
reg <- rri(surnames)
reg # a coefficient of unbiased Regional Random Isonymy
kin <- rel.phi(iso.matrix,reg)
kin # an 'a priori' kinship matrix
}
\keyword{ array }
\keyword{ methods }
\keyword{ manip }
