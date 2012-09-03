\docType{methods}
\name{printHaploProbs}
\alias{printHaploProbs}
\title{Print haplo group probabilities}
\usage{
  printHaploProbs(namedHaploGroups, haploFrequencies)
}
\arguments{
  \item{namedHaploGroups}{A list of haplotype groups (each
  a list) that explain a genotype.}

  \item{haploFrequencies}{A named numeric vector giving the
  probabilities of haplotypes.  Names store the haplotype
  names.}
}
\value{
  Nothing. Prints only
}
\description{
  Print out haplotype groups and their relative
  probabilities
}
\details{
  This was a first attempt to order competing haplotype
  groups. It only prints and does not return a useable
  object.
}

