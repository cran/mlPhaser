\docType{methods}
\name{listHaploToTable}
\alias{listHaploToTable}
\title{Haplotype list to Haplotype table.}
\usage{
  listHaploToTable(haploList)
}
\arguments{
  \item{haploList}{A list of lists. One top level element
  per haplotype. Each haplotype should be named and have
  the same set of loci as a sublist.}
}
\value{
  A set of haplotypes in table format as a data.frame
}
\description{
  Converts a set of haplotypes from list format to table
  format
}
\details{
  Each list element becomes a row. Each locus becomes a
  column.
}

