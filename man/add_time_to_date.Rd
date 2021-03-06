% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.r
\name{add_time_to_date}
\alias{add_time_to_date}
\title{convert separate lists of dates and times to POSIXlt objects}
\usage{
add_time_to_date(tms, dts, verbose = FALSE)
}
\arguments{
\item{tms}{vector of times, i.e. number in range 0 to 2400, as string or
integer, with or without trailing zeros}

\item{dts}{vector of dates, in string format \%Y-\%m-\%d or simple R Date
objects}

\item{verbose}{single logical value, if \code{TRUE} then produce verbose
messages}
}
\value{
vector of POSIXlt date-times
}
\description{
Some datetime data is presented as a separate dates and times.
  This function restores the full date-time.
}
