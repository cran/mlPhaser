\docType{methods}
\name{simGenoFromHaplo}
\alias{simGenoFromHaplo}
\title{Simulate genotypes}
\usage{
  simGenoFromHaplo(haploTable, haploFreqs, n = 1,
    ploidy = 2)
}
\arguments{
  \item{haploTable}{The list of haplotypes in table format}

  \item{haploFreqs}{A named vector of haplotype
  frequencies.}

  \item{n}{How many genotypes to simulate.}

  \item{ploidy}{How many alleles per locus. Default = 2.}
}
\value{
  A data.frame of genotypes. Each locus will have multiple
  colums as per the ploidy level.
}
\description{
  Simulates genotypes from a table of haplotypes.
}
\details{
  Simulates n genotypes from a table of haplotypes.
  Genotypes will include one allele per ploidy level.
}
\examples{
# create a data frame to store alleles of haplotypes. Columns are loci.
haplotypes <- data.frame(	A= c("a","b","c","a","b","c","b"),
					B= c("a","b","c","b","c","a","a"),
					C= c("a","b","c","b","c","a","a") )
# give the haplotypes sensible names as rownames.
rownames(haplotypes) <- apply(haplotypes, 1, paste,sep="" , collapse="")
# Create a named vector of haplotype frequencies.
haploFreqs <- c(0.4, 0.3, 0.15, 0.07,0.05, 0.02, 0.01)
names(haploFreqs) <- rownames(haplotypes)

# simulate a set of genotypes
my.genotypes <- simGenoFromHaplo(haploTable=haplotypes, haploFreqs=haploFreqs , n=20, ploidy=2)
}

