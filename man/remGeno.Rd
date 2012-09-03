\docType{methods}
\name{remGeno}
\alias{remGeno}
\title{Extract haplotype from genotype}
\usage{
  remGeno(haplotype, genotypeList)
}
\arguments{
  \item{haplotype}{The haplotype to be removed}

  \item{genotypeList}{The genotype in list of lists
  format.}
}
\value{
  A list giving the original haplotype extracted
  (haplotype), a table of TRUE/FALSE for each locus with
  TRUE if the allele was successfully extracted
  (passTable), and a list giving the genotype remaining
  after extraction (remList).
}
\description{
  Attempts to extract a haplotype from a genotype
}
\details{
  Tries to extract a single haplotype from a compound
  genotype and return, amongst other things, the remainder
  genotype.
}

