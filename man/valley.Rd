\name{valley}
\alias{valley}
\docType{data}
\title{ Raw marriage data }
\description{
  A raw marriage data set, in which every row corresponds to a different marriage record. 
}
\usage{data(valley)}
\format{
  A 702 rows by 8 columns dataset. The columns of "valley" contain the following information:
  \tabular{ll}{
    
PAR: \tab (sub)population to which the marriage is referred.\cr
YEAR: \tab year in which the marriage was performed.\cr
SURM: \tab male surname.\cr
NM: \tab male birth (sub)population.\cr
RM:  \tab male residence (sub)population.\cr
SURF: \tab female surname.\cr
NF: \tab female birth (sub)population. \cr
RF: \tab female residence (sub)population.
}

For all columns the letter "X" indicates that the mate was born or resident outside of the study area.
  
}  
\details{
  
  Marriage data, depending from the used sources, may contain more or less information than the "valley" example data set. Columns order in the dataset is not relevant. Information on (sub)population, male and female surnames are needed to perform surname-based analyses on marriage data.
  NB. Information on mates birthplace (or equivalent data) can be used to produce a migration matrix (see the "raw.mig" dataset).
  NB2. Given that surnames may contain spaces (e.g. "DE IORIO"), the best way to import surname data is to save the original data base as a .csv file, and then use the read.csv() or read.csv2() functions. Another option is to use GNUMERIC, because it has a text export feature that allows to put  brakets ("") to the left and right of every cell content, so that composite surnames are read as a string. The resulting text file is easily imported by read.table().
}
\source{
  Paola Gueresi. Subset of a real marriage dataset
}
\examples{
data(valley)

}
\keyword{datasets}
