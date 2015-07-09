\name{uri}
\alias{uri}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculates the Unbiased Random Isonymy matrix }
\description{
  "uri" calculates the unbiased random isonymy coefficient starting from surname frequencies. 
}
\usage{
uri(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ is a surname frequency table where the N rows correspond to the surnames present in the whole population and the M columns are the (sub)populations }
}
\details{
  The function implements Morton's isonymy method as outlined by Relethford. Unbiased estimations of intra-(sub)population isonymy were included.
  Unbiased Random Isonymy is an argument needed to calculate 'a priori' and conditional kinship matrices using the "rel.phi" and "rel.cond" functions.
}
\value{
  Returns a square symmetric unbiased isonymy matrix. 
}

\references{ Morton, N. E. 1973. Kinship bioassy. In: Genetic distance,
  J. F Crow and C Denniston (eds.). New York, Plenum Press, 97-104.
Relethford, J. H. 1988. Estimation of kinship and genetic distance from
surnames. Human Biology, 60(3): 475-492.}
\author{ Federico C. F. Calboli and Alessio Boattini \email{alessio.boattini2@unibo.it} }
\note{
  The use of ``uri'' could be problematic, because different people are likely to arrange isonymy data in different ways on their computers. We decided for a matrix format for the isonymy data; the function would originally accept data in a different format and then convert it internally, but this would be a problem for people with data arranged in a different format. In the end we decided to write a specific function, "sur.freq", to generate surname frequency tables directly from raw marriage data or marriage-like data (the most commonly used sources in bio-demographic studies). For other types of surname data, see the verbose explanation in the info for the dataset "surnames" so it would be clear for the user how ``uri'' works.
}
\seealso{ \code{\link{sur.freq}} to generate the input surname frequency table from marriage data, \code{\link{surnames}} for an explanation on how to generate the correct input table from other surname sources, \code{\link{lasker}} for a similar kinship coefficient derived from surnames, \code{\link{hedrick}} for a standardized kinship coefficient derived from surnames, \code{\link{rri}} to calculate an unbiased estimate of Regional Random Isonymy from surnmaes \code{\link{rel.phi}} to calculate an 'a priori' kinship matrix from isonymy data, \code{\link{rel.cond}} to calculate a conditional kinship matrix from isonymy data}
\examples{
# starting from a raw marriage records dataset:
data(valley)
tot <- sur.freq(valley,valley$PAR,valley$SURM,valley$SURF)
tot # a frequency table calculated above all the surnames
iso.matrix <- uri(tot)
iso.matrix # a unbiased random isonymy matrix

#starting from a generic surname frequency table
data(surnames)
surnames # a made-up dataset
# you can see that the surnames are arranged as the _rows_
# and the populations are the _columns_
# the function "uri" turns this data into a unbiased random isonymy matrix
iso.matrix <- uri(surnames)
iso.matrix
}
\keyword{ array }
\keyword{ methods }
\keyword{ manip }
