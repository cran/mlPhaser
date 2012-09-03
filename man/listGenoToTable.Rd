\docType{methods}
\name{listGenoToTable}
\alias{listGenoToTable}
\title{Genotype list to genotype table}
\usage{
  listGenoToTable(genoList)
}
\arguments{
  \item{genoList}{A list of lists. One entry per genotype
  (sample) each containing a list of loci to store the
  alleles.}
}
\value{
  A data.frame a row for each genotype and n colums for
  each locus (where n is ploidy of locus)
}
\description{
  Converts a list of genotypes to a table with several
  columns per locus.
}
\details{
  The multiple columns per locus are differentiated with a
  numerical suffic. e.g. locA.1, locA.2
}

