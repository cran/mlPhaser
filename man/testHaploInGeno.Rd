\docType{methods}
\name{testHaploInGeno}
\alias{testHaploInGeno}
\title{Test genotype for presence of haplotype}
\usage{
  testHaploInGeno(haplotype, genotypeList)
}
\arguments{
  \item{haplotype}{The haplotype as a one line data.frame}

  \item{genotypeList}{The genotype as a list of lists.}
}
\value{
  TRUE/FALSE if haplotype is present in the genotype
}
\description{
  Test if a genotype contains a haplotype.
}
\details{
  An early implementation to test if a genotype contained a
  haplotype.  N.B. I don't think this is used anymore.
}

