#' Turns a Migration Matrix into a Column Stochastic Matrix 
#'
#' Calculates the column stochastic matrix starting from the raw migration matrix \code{x}. For each column, it divides each term by the column sum. Then it returns the thus "normalized by column" matrix, ready to be used in the Malecot migration model.
#' @usage col.sto(x)
#' @param x the raw data migration matrix
#' @return col.sto is used on a an object of class "matrix" and returns an object of class "matrix".
#' @details The Malecot model uses a transformation of the raw migration data; in the "Malecot" library the use of a column stochastic matrix follows Imaizumi 1970 and Swedlund 1984.
#' @references Imaizumi, Y., N. E. Morton and D. E. Harris. 1970. Isolation by distance in artificial populations. Genetics 66: 569-582.
#' @references Jorde, L. B. 1982. The genetic structure of the Utah mormons: migration analysis. Human Biology 54(3): 583-597. 
#' @author Federico C. F. Calboli \email{f.calboli@gmail.com}
#' @examples 
#' data(raw.mig)
#' new.mig.mat<-col.sto(raw.mig)
#' new.mig.mat
#' 

"col.sto" <- function(x){
  y<-apply(x,2,sum)
  x1<-t(t(x)/y)
  x1
}
