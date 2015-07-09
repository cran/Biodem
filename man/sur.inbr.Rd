\name{sur.inbr}
\alias{sur.inbr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Total, Random and Non-random Inbreeding Coefficients }
\description{
  Function ``sur.inbr'' calculates Total, Random and Non-random Inbreeding Coefficients starting from Observed and Random Isonymy indexes in each (sub)population.
}
\usage{
sur.inbr(x,method="B")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ is a data frame composed by 3 columns which, in order, contain: a code (or  a name) identifying the analysed (sub)populations; Observed Isonymy (Pt) values; Random Isonymy (Pr) values. The number of rows is equal to the total number of analysed (sub)populations. }
  \item{method}{ character string specifying the method to be used in the calculation of the indexes. The available options are "A" and "B". Both the methods give similar results. The "B" method, being the most frequently used in the studies, is given as the default option }
}
\details{
  Inbreeding coefficients are obtainable starting from Isonymy data. The data frame containing Observed and Random Isomymy for each (sub)population needed as argument in ``sur.inbr'' is easily obtainable using the "mar.iso" function. Inbreeding coefficients allow an estimate of the inbreeding level in a (sub)population on the basis of couples of surnames. 
}
\value{
  Returns a data frame reporting Total Inbreeding (Ft), Random Inbreeding (Fr) and Non-random Inbreeding (Fn) for each (sub)population (pop)
}

\references{ Crow, J. F., Mange, A. P. 1965. Measurement of inbreeding from the frequency of marriages between persons of the same surnames. Eugen. Q. 12:199-203. Crow, J. F. 1980. The estimation of inbreeding from isonymy. Hum. Biol. 52:1-14. }
\author{ Federico C. F. Calboli and Alessio Boattini \email{alessio.boattini2@unibo.it} }
\note{
  Total Inbreeding (Ft) is an estimate of the inbreeding level in a (sub)population. Random Inbreeding (Fr) is the expected inbreeding level in a (sub)population in case of completely random marriage unions. Non-random Inbreeding (Fn) expresses the deviance between Ft and Fr: positive Fn values show preference towards unions between consanguineous mates, negative Fn values show aversion towards unions between consanguineous mates.
}
\seealso{ \code{\link{sur.freq}} to calculate surnames frequencies tables from raw marriages data bases, \code{\link{mar.iso}} to calculate Observed and Random Isonymy coefficients starting from tables of couples of surnames frequencies, \code{\link{r.pairs}} to calculate Repeated Pairs indexes }
\examples{
data(valley)
valley # a subset of a real marriage data base

mar <- sur.freq(valley,valley$PAR,valley$SURM,valley$SURF,freq.table="marriages")
mar # frequency tables calculated above the observed pairs of surnames in each population

iso <- mar.iso(mar)
iso # a data frame containing Pt and Pr values for each (sub)population

inbreeding <- sur.inbr(iso)
inbreeding # inbreeding indexes calculated using the method "B"

inbreeding2 <- sur.inbr(iso,method="A")
inbreeding2 # inbreeding indexes calculated using the method "A"
}
\keyword{ array }
\keyword{ methods }
\keyword{ manip }
