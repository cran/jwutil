% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/df.r
\name{affixFields}
\alias{affixFields}
\title{update a set of data frame field names}
\usage{
affixFields(fields, affix, skip = NULL, renameHow = c("suffix",
  "prefix"), sep = ".")
}
\arguments{
\item{fields}{char vector}

\item{affix}{character}

\item{skip}{char vector, defaults to include all fields}

\item{renameHow}{should be "suffix" or "prefix", default is suffix}

\item{sep}{default "."}
}
\value{
character vector, same length as fields
}
\description{
prefix or suffix
}
