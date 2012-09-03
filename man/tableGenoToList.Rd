\docType{methods}
\name{tableGenoToList}
\alias{tableGenoToList}
\title{Convert genotype table to list of lists}
\usage{
  tableGenoToList(genoTable, locusNames)
}
\arguments{
  \item{genoTable}{A data.frame containg genotypes. One row
  per genotype. Multiple columns per locus as per the
  ploidy.}

  \item{locusNames}{A character vector of locus names.}
}
\value{
  genotypes as a list of lists
}
\description{
  Converts a table of genotypes to a list of lists, one
  sub-list per genotype.
}
\details{
  Converts a table of genotypes to a list of lists, one
  sub-list per genotype.
}

