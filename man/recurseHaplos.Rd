\docType{methods}
\name{recurseHaplos}
\alias{recurseHaplos}
\title{Recurse to get haplo groups}
\usage{
  recurseHaplos(validHaplotypes, remGenotype, group)
}
\arguments{
  \item{validHaplotypes}{A list of haplotypes to choose
  from}

  \item{remGenotype}{The remaining part of the genotype}

  \item{group}{The valid group to this point.}
}
\value{
  NULL. N.B.  requires access to a globally accessible
  storage variable: validHaploGroups
}
\description{
  Recursive function to extract valid groups of haplotypes
  explaining a genotype
}
\details{
  This recursive function subtracts haplotypes from a
  genotypes to find 'groups' of haplotypes that can fully
  explain a genotype. To make the function general and cope
  with ploidy > 2, I made it recursive. It will keep going
  until it has run out of genotype and/or it has run out of
  valid haplotypes. This should probably stay as an
  internal function because of its recursive nature. N.B.
  requires access to a globally accessible storage
  variable: validHaploGroups
}

