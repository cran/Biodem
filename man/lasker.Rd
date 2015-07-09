\name{lasker}
\alias{lasker}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculates the lasker kinship coeffcient }
\description{
  ``Lasker''calculates the lasker kinship coefficient starting from a surname frequency table.
}
\usage{
lasker(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ is a surname frequency table where the N rows correspond to the surnames present in the whole population and the M columns are the subpopulations }
}
\details{
  The use of ``lasker'' could be problematic, because different people are likely to arrange isonymy data in different ways on their computers. We decided for a matrix format for the isonymy data; the function would originally accept data in a different format and then convert it internally, but this would be a problem for people with data arranged in a different format. In the end we decided to write a specific function, "sur.freq", to generate surname frequency tables directly from raw marriage data or marriage-like data (the most commonly used sources in bio-demographic studies). For other types of surname data, see the verbose explanation in the info for the dataset "surnames" so it would be clear for the user how ``lasker'' works.
}
\value{
  Returns a square symmetric kinship matrix.
}
\references{ Lasker, G.W. 1977. A coefficient of relationship by isonymy: A method for estimating the genetic relationship between populations. Hum. Biol. 49:489-493. }
\author{ Federico C. F. Calboli and Alessio Boattini \email{alessio.boattini2@unibo.it} }
\note{
    ...
  }
\seealso{ \code{\link{sur.freq}} to generate the input surname frequency table from marriage data, \code{\link{surnames}} for an explanation on how to generate the correct input table from other surname sources, \code{\link{hedrick}}and \code{\link{uri}} for other types of inter-population kinship matrices }
\examples{
# starting from a raw marriage records dataset:
data(valley)
tot <- sur.freq(valley,valley$PAR,valley$SURM,valley$SURF)
tot # a frequency table calculated above all the surnames
lask.kin <- lasker(tot)
lask.kin # a kinship matrix

#starting from a generic surname frequency table
data(surnames)
surnames #a made-up dataset
# the surnames are arranged as the _rows_ and the populations are the _columns_
# the use of the function ``Lasker'' just turns this data into a kinship matrix
lask.kin <- lasker(surnames)
lask.kin
}
\keyword{ array }
\keyword{ methods }
\keyword{ manip }
