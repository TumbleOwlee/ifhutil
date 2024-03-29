% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{ifh.warn}
\alias{ifh.warn}
\title{Prints the arguments as concatenated string and marked as warning.}
\usage{
ifh.warn(...)
}
\arguments{
\item{...}{arguments passed down to paste(..)}
}
\description{
This function prints the given message and adds the log level prefix
'[!] WARN:'. After the call to ifh.init(), this function is replaced by
cli_alert_warning() by the 'cli' package for prettier messages.
}
\examples{
ifh.warn("Print some step with number", 10)
}
