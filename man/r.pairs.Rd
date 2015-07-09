\name{r.pairs}
\alias{r.pairs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Observed and Random Repeated Pairs Coefficients }
\description{
  Function ``r.pairs'' calculates Observed and Random Repeated Pairs Coefficients starting from tables of observed couples of surnames frequencies in each (sub)population.
}
\usage{
r.pairs(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ is a table object containing N matrices, where N is the number of analysed (sub)populations. Each matrix is a square matrix whose dimensions are equal to the total number of different surnames observed in the analysed subpopulations. Rows correspond to male surnames entries and columns to female surnames entries. }
  }
\details{
  Repeated Pairs coefficients are obtainable starting from marriage data or equivalent data. The tables of observed couples of surnames needed as argument in ``rep.pairs'' are easily obtainable from raw data using the "sur.freq" function selecting the "marriage" option. Observed Repeated Pairs coefficient (RP) estimate the level of homozigosity in a (sub)population on the basis of repeated appearences of couples of identical surnames. Random Repeated Pairs coefficient (RPr) is the expected RP value in case of completely random marriage unions. Comparisons between RP and RPr are expressed with their percentage difference (perc.diff) given by (RP-RPr)/RPr. 
}
\value{
  Returns a data frame reporting Observed Repeated Pairs (RP), Random Repeated Pairs (RPr) and the Percentual difference between RP and RPr (perc. diff) for each (sub)population (pop).
}

\references{ Lasker G. W., Kaplan B. A. 1985. Surnames and genetic structure: repetition of the same pairs of names of married couples, a measure of subdivision of the population. Hum. Biol. 57:431-440. Chakraborty R. 1985. A note on the calculation of random RP and its sampling variance. Hum. Biol. 57:713-717. Chakraborty R. 1986. Erratum. Hum. Biol. 58:991. }
\author{ Federico C. F. Calboli and Alessio Boattini \email{alessio.boattini2@unibo.it} }
\note{
  RP and RPr are standardized indexes and their values vary between 0 and 1. RP, being calculated using the whole surname matrix, is considered a more reliable source of information on the level of homozigosity in a population than Isonymy data. An excess of RP on RPr, as calculated by their percentage difference, suggests the existence of a degree of subdvision internal to the analysed (sub)population.  
}
\seealso{ \code{\link{sur.freq}} to calculate surnames frequencies tables from raw marriages data bases, \code{\link{mar.iso}} to calculate Observed and Random Isonymy coefficients starting from tables of couples of surnames frequencies, \code{\link{sur.inbr}} to calculate Inbreeding indexes from Isonymy coefficients}
\examples{
data(valley)
valley # a subset of a real marriage data base

mar <- sur.freq(valley,valley$PAR,valley$SURM,valley$SURF,freq.table="marriages")
mar # frequency tables of the observed pairs of surnames in each population

RP <- r.pairs(mar)
RP # a data frame containing RP, RPr perc.diff values for each (sub)population

}
\keyword{ array }
\keyword{ methods }
\keyword{ manip }
