\name{surnames}
\alias{surnames}
\docType{data}
\title{ Surname frequency table }
\description{
  A surname frequency table, with 3 populations and 5 surnames.
}
\usage{data(surnames)}
\format{
  A 5 rows by 3 columns dataset 
}
\details{
  Surname frequency tables are the argument needed in all the surname-based inter-population analysis functions (e.g. "lasker", "hedrick", "uri", etc.).
  Surname frequency tables can be generated from marriage and marriage-like data (e.g. data that contain couples of related surnames) using the "sur.freq" function. 
  In order to generate surname frequency tables from other surname sources (e.g. telephone directories, registers of voters, etc.) see the example in this help page.
  To import correctly surnames data bases in R see the "valley" dataset help page.
}
\source{
  Alessio Boattini. Dummy dataset generated for testing and example purposes
}
\examples{
data(surnames)

# NB. How did we produce the "surnames" dataset?
# the original data (an hypothetic list of surnames)
# were arranged as:

#  YEAR POP SURNAME
#  1901   3  FABBRI
#  1901   3  VITALI
#  1901   2   LIPPI
#  1901   2  FABBRI
#  1901   2   NARDI
#  1901   2   NARDI
#  1901   1  ANGELI
#  1902   1  ANGELI
#  1902   2  VITALI
#  1902   2   LIPPI
#  1902   1   LIPPI
#  1902   1   LIPPI
#  1902   3  VITALI
#  1902   3  FABBRI
#  1902   2  FABBRI
#  1904   2   NARDI
#  1904   2   NARDI
#  1904   2   LIPPI
#  1905   1  VITALI
#  1905   1  FABBRI
#  1905   3  FABBRI
#  1905   3  ANGELI
#  1905   2   LIPPI
#  1905   2   NARDI
#  1905   3   NARDI
#  1905   3   NARDI

#       ..........

# This arrangement does not necessarily reflect
# the way other people would arrange their data. 
# The "surnames" dataset was generated using
# the "table" function as follows:

# table(data$SURNAME,data$POP)
}
\keyword{datasets}