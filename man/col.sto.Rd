\name{col.sto}
\alias{col.sto}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Turns a Migration Matrix into a Column Stochastic Matrix }
\description{
  Calculates the column stochastic matrix starting from the raw migration matrix. For each column, it divides each term by the column sum. Then it returns the thus "normalized by column" matrix, ready to be used in the Malecot migration model.
}
\usage{
col.sto(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ the raw data migration matrix }
}
\details{
  The Malecot model uses a transformation of the raw migration data; in the "Malecot" library the use of a column stochastic matrix follows Imaizumi 1970 and Swedlund 1984.
}
\value{
  col.sto is used on a an object of class "matrix" and returns an object of class "matrix".
}
\references{ Imaizumi, Y., N. E. Morton and D. E. Harris. 1970. Isolation by distance in artificial populations. Genetics 66: 569-582.

Jorde, L. B. 1982. The genetic structure of the Utah mormons: migration analysis. Human Biology 54(3): 583-597. }
\author{ Federico C. F. Calboli \email{f.calboli@imperial.ac.uk} }
\note{ ... }
\examples{
data(raw.mig)
new.mig.mat<-col.sto(raw.mig)
new.mig.mat
}
\keyword{ manip }
\keyword{ array }
