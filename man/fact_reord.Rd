% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fact_reord.r
\name{fact_reord}
\alias{fact_reord}
\title{Reorder the levels according to given vector}
\usage{
fact_reord(x, y)
}
\arguments{
\item{x}{Factor or character}

\item{y}{numeric vector}
}
\value{
Factor
}
\description{
The output is the factor with levels in the order specified
for individual character in vector x by vector y
}
\examples{
fact_reord(c("This","is","test","examp"),c(3,1,4,2))
}
