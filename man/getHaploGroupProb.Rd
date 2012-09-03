\docType{methods}
\name{getHaploGroupProb}
\alias{getHaploGroupProb}
\title{Get haplotype group probability}
\usage{
  getHaploGroupProb(haploGroup, haploFreqs,
    method = "basic", returnLog = FALSE)
}
\arguments{
  \item{haploGroup}{A list of haplotypes. Only the names
  attribute is important.}

  \item{haploFreqs}{The frequencies of haplotypes as a
  named vector.}

  \item{method}{Only one method currently ("basic").}

  \item{returnLog}{Whether to output the combined
  probability as a natural log. Default=FALSE.}
}
\value{
  A numeric likelihood representing the combined
  probability across a group.
}
\description{
  Combine probabilities across a haplotype group
}
\details{
  Each haplotype might have a probability of being found.
  e.g. the population frequency. This function combines
  probabilities of a group of haplotypes
}

