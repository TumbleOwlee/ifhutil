% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{ifh.table.expand}
\alias{ifh.table.expand}
\title{Expands a table by duplicating a row for each element of a cell.}
\usage{
ifh.table.expand(
  table,
  by,
  split = ",",
  na = "",
  limit.to = vector(mode = "character"),
  remove.prefix = ""
)
}
\arguments{
\item{table}{the data.frame to expand}

\item{by}{the column name containing the list of elements}

\item{split}{the delimiter of each element of the list}

\item{na}{the NA value of the column}

\item{limit.to}{column names to include in returned data.frame}

\item{remove.prefix}{the prefix to remove from each list element before duplication}
}
\value{
data.frame of all expanded rows with columns specified in 'by' and 'limit.to'
}
\description{
This function expands a table based on a given column containing a list of elements,
so that each row of the table only contains a single value in the column. It is done
by multiplying the row for each of the list elements. This is useful if you want to
create an 1:1 mapping from an 1:n mapping in each row.
}
