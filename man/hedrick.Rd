\name{hedrick}
\alias{hedrick}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculates the Hedrick standardized kinship coefficient }
\description{
  ``hedrick''calculates the Hedrick standardized kinship coefficient starting from surname frequencies.
}
\usage{
hedrick(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ is a surname frequency table where the N rows correspond to the surnames present in the whole population and the M columns are the subpopulations }
}
\details{
  The use of ``hedrick'' could be problematic, because different people are likely to arrange isonymy data in different ways on their computers. We decided for a matrix format for the isonymy data; the function would originally accept data in a different format and then convert it internally, but this would be a problem for people with data arranged in a different format. In the end we decided to write a specific function, "sur.freq", to generate surname frequency tables directly from raw marriage data or marriage-like data (the most commonly used sources in bio-demographic studies). For other types of surname data, see the verbose explanation in the info for the dataset "surnames" so it would be clear for the user how ``hedrick'' works.
}
\value{
  Returns a square symmetric standardized kinship matrix. 
}

\references{ Hedrick, P. W. 1971. A new approach to measuring genetic similarity. Evolution 25: 276-280. Weiss, V. 1980. Inbreeding and genetic distance between hierarchically structured populations measured by surname frequencies. Mankind Quarterly 21: 135-149 }
\author{ Federico C. F. Calboli and Alessio Boattini \email{alessio.boattini2@unibo.it} }
\note{
  The Hedrick index was originally conceived as a measure of the probability of genotypic identity between (sub)populations and uses a standardization analogous to that employed when calculating a correlation coefficient. As a consequence, it is equal to 1 if measured on populations with identical surname distribution.
}
\seealso{ \code{\link{sur.freq}} to generate the input surname frequency table from marriage data, \code{\link{surnames}} for an explanation on how to generate the correct input table from other surname sources, \code{\link{lasker}}and \code{\link{uri}} for other types of inter-population kinship matrices }
\examples{
# starting from a raw marriage records dataset:
data(valley)
tot <- sur.freq(valley,valley$PAR,valley$SURM,valley$SURF)
tot # a frequency table calculated above all the surnames
hed.kin <- hedrick(tot)
hed.kin # a standardized kinship matrix

#starting from a generic surname frequency table
data(surnames)
surnames #a made-up dataset
# you can see that the surnames are arranged as the _rows_ and
# the populations are the _columns_
# the use of the function "hedrick" just turns this data into a kinship matrix
hed.kin <- hedrick(surnames)
hed.kin
}
\keyword{ array }
\keyword{ methods }
\keyword{ manip }
