\name{sur.freq}
\alias{sur.freq}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculates surnames frequency tables }
\description{
  ``sur.freq''calculates surnames frequency tables starting from raw marriage data or equivalent sources (i.e. birth registrations)
}
\usage{
sur.freq(x,pop,mal.sur,fem.sur,freq.table="total")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ is a data frame in which every row corresponds to a different marriage record. The data frame must contain: \bold{a} a column reporting the population in which the marriage was recorded; \bold{b} a column containing male surnames; \bold{c} a column containing female surnames }
  \item{pop}{ is the name of the column in the data frame that reports the population in which the marriage was recorded }
  \item{mal.sur}{ is the name of the column in the data frame that contains male surnames }
  \item{fem.sur}{ is the name of the column in the data frame that comtains female surnames }
  \item{freq.table}{ character string specifying the type of surname frequency table to be calculated. The available options are: "males" (table calculated using only male surnames); "females" (table calculated using only female surnames); "total" (table calculated using all the surnames); "marriages" (tables calculated using observed pairs of surnames in each population). The default option is "total". }
}
\details{
  ``sur.freq'' is specifically written to derive surname frequency tables from marriage data, or, more generally, data in which appear couples of related surnames, as birth records etc. 
  }
\value{
  A single table of surname frequencies ("male", "female", "total" options) or tables of observed pairs of surnames frequencies for each population ("marriages" option)
}

\references{ Lasker, G. W. 1985. Surnames and genetic structure. Cambridge University Press. Cambridge, England }
\author{ Federico C. F. Calboli and Alessio Boattini \email{alessio.boattini2@unibo.it} }
\note{
  Surname frequency tables produced with ``sur.freq'' are intended to be used as an argument for other functions to investigate the bio-demographic structure of populations. In particular, the "male", "female" and "total" options produce tables to be used in inter-population analyses (maesures of kinship/distance between populations, etc.); the "marriage" option produces tables to be used in intra-population analyses (inbreeding levels etc.). 
Tables of surname frequencies can also be obtained from simple lists of surnames (i.e. telephone directories, etc.) using the function ``table''; for further explanations see the info for the "surnames" data set.
  }
\seealso{ \code{\link{mar.iso}} for the calculation of Marital Isonymy coefficients from tables of observed pairs of surnames frequencies, \code{\link{r.pairs}} fot the calculation of Repeated Pairs coefficients from tables of observed pairs of surnames frequencies, \code{\link{lasker}} and \code{\link{hedrick}} for the calculation of similarity indexes between populations from surnames frequency tables, \code{\link{surnames}} for an explanation on how to generate a surname frequency table starting from non-marriage like data }
\examples{
data(valley)
valley #a subset of a real marriage data base

# you can see that marriages correspond to rows in the data frame.
# Note that the data frame contains other columns 

tot <- sur.freq(valley,valley$PAR,valley$SURM,valley$SURF)
tot # a frequency table calculated above all the surnames
mal <- sur.freq(valley,valley$PAR,valley$SURM,valley$SURF,freq.table="males")
mal # a frequency table calculated above the male surnames
fem <- sur.freq(valley,valley$PAR,valley$SURM,valley$SURF,freq.table="females")
fem # a frequency table calculated above the female surnames
mar <- sur.freq(valley,valley$PAR,valley$SURM,valley$SURF,freq.table="marriages")
mar # frequency tables for the observed pairs of surnames in each population
}
\keyword{ array }
\keyword{ methods }
\keyword{ manip }
