% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{ifh.exec}
\alias{ifh.exec}
\title{Execute the given expression either quietly or not}
\usage{
ifh.exec(expr, quiet = FALSE)
}
\arguments{
\item{expr}{expression to execute}

\item{quiet}{if true, all output of expression is suppressed}
}
\description{
This function is used to execute any expression and providing the option
to suppress all output by utilizing a flag. It is mainly used by CLI
applications that provide an '--quiet' flag to switch output.
}
