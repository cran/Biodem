\name{mar.iso}
\alias{mar.iso}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Observed and Random Marital Isonymy }
\description{
  Function ``mar.iso'' calculates Observed and Random Marital Isonymy starting from tables of observed couples of surnames frequencies in each (sub)population.
}
\usage{
mar.iso(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ is a table object containing N matrices, where N is the number of analysed (sub)populations. Each matrix is a square matrix whose dimensions are equal to the total number of different surnames observed in the analysed subpopulations. Rows correspond to male surnames entries and columns to female surnames entries }
}
\details{
  Marital Isonymy coefficients are obtainable starting from marriage data or equivalent data. The tables of observed couples of surnames needed as argument in ``mar.iso'' are easily obtainable from raw data using the "sur.freq" function selecting the "marriage" option. Observed Isonymy (Pt) is the number of isonymic marriages (i. e. marriages in which both the mates have the same surname) on the total number of marriages. Random Isonymy (Pr) is the probability that two mates have randomly the same surname and is given by: Pr = sum (pi * qi), where pi is the frequence of the i-th surname among males and qi is the frequency of the i-th surname among females. 
}
\value{
  Returns a data frame reporting Observed Isonymy (Pt) and Random Isonymy (Pr) for each (sub)population (pop)
}

\references{ Crow, J. F., Mange, A. P. 1965. Measurement of inbreeding from the frequency of marriages between persons of the same surnames. Eugen. Q. 12:199-203. Crow, J. F. 1980. The estimation of inbreeding from isonymy. Hum. Biol. 52:1-14. }
\author{ Federico C. F. Calboli and Alessio Boattini \email{alessio.boattini2@unibo.it} }
\note{
  The Observed Isonymy coefficient (Pt) is a measure of within (sub)population kinship. The Random Isonymy coefficient (Pr) is an unbiased measure of the expected within (sub)population kinship value in case of random marriage unions. The output of the ``mar.iso'' function can be used as the argument for the "sur.inbr" function to calculate Inbreeding indexes. Pr values can also be substituted to the diagonal values of the kinship between populations matrix given by the function "uri" to obtain another unbiased random kinship matrix. 
}
\seealso{ \code{\link{sur.freq}} to calculate surnames frequencies tables from raw marriages data bases, \code{\link{sur.inbr}} to calculate inbreeding coefficients starting from Pt and Pr, \code{\link{r.pairs}} to calculate Repeated Pairs indexes, \code{\link{uri}} to calculate a matrix of Unbiased Random Isonymy coefficients between (sub)populations }
\examples{
data(valley)
valley #a subset of a real marriage data base

mar <- sur.freq(valley,valley$PAR,valley$SURM,valley$SURF,freq.table="marriages")
mar # frequency tables of the observed pairs of surnames in each population

iso <- mar.iso(mar)
iso # a data frame containing Pt and Pr values for each (sub)population
}
\keyword{ array }
\keyword{ methods }
\keyword{ manip }
