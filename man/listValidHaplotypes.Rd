\docType{methods}
\name{listValidHaplotypes}
\alias{listValidHaplotypes}
\title{List valid haplotypes}
\usage{
  listValidHaplotypes(genotype, haplotypes, ploidy = 2)
}
\arguments{
  \item{genotype}{The genotype. Can be in data.frame or
  list of list format.}

  \item{haplotypes}{The haplotypes. Can be in data.frame or
  list of lists format.}

  \item{ploidy}{How many alleles per locus. Default=2.}
}
\value{
  A list of valid haplotypes (each as a list).
}
\description{
  Select valid haplotypes (from a list) for a genotype
}
\details{
  Tests a set of haplotypes against a genotype to see if
  they are contained within.
}

