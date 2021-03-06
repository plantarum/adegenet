% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/export.R
\name{genind2df}
\alias{genind2df}
\title{Convert a genind object to a data.frame.}
\usage{
genind2df(x, pop = NULL, sep = "", usepop = TRUE, oneColPerAll = FALSE)
}
\arguments{
\item{x}{a \linkS4class{genind} object}

\item{pop}{an optional factor giving the population of each individual.}

\item{sep}{a character string separating alleles. See details.}

\item{usepop}{a logical stating whether the population (argument \code{pop}
or \code{x@pop} should be used (TRUE, default) or not (FALSE)).}

\item{oneColPerAll}{a logical stating whether or not alleles should be split
into columns (defaults to \code{FALSE}). This will only work with data with
consistent ploidies.}
}
\value{
a data.frame of raw allelic data, with individuals in rows and loci in column
}
\description{
The function \code{genind2df} converts a \linkS4class{genind} back to a
data.frame of raw allelic data.
}
\examples{

## simple example
df <- data.frame(locusA=c("11","11","12","32"),
locusB=c(NA,"34","55","15"),locusC=c("22","22","21","22"))
row.names(df) <- .genlab("genotype",4)
df

obj <- df2genind(df, ploidy=2, ncode=1)
obj
obj@tab


## converting a genind as data.frame
genind2df(obj)
genind2df(obj, sep="/")

}
\seealso{
\code{\link{df2genind}}, \code{\link{import2genind}}, \code{\link{read.genetix}},
\code{\link{read.fstat}}, \code{\link{read.structure}}
}
\author{
Thibaut Jombart \email{t.jombart@imperial.ac.uk}
}
\keyword{manip}
