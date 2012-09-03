\docType{methods}
\name{phaseReport}
\alias{phaseReport}
\title{Best/all hapltype groups for a genotype}
\usage{
  phaseReport(genotypes, haplotypes, haploFreqs,
    outFormat = "all")
}
\arguments{
  \item{genotypes}{The table/list of genotypes}

  \item{haplotypes}{The table/list of candidate haplotypes}

  \item{haploFreqs}{The frequencies of haplotypes as a
  named vector.}

  \item{outFormat}{Whether to output all valid haplotype
  groups or just the best (based on joint probability).}
}
\value{
  A data.frame of results...
}
\description{
  Attempts to find best/all haplotype groups that fully
  explain observed multi-locus genotypes.
}
\details{
  This wrapper function takes a set of genotypes, a set of
  haplotypes and a set of haplotype frequencies and
  attempts to report either all groups or just the single
  most likely group of known haplotypes that fully explains
  each observed genotype.
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
# load a genotype as a table
thisGenotype <- data.frame(A.1="a", A.2="b", B.1="a", B.2="b",C.1="a", C.2="b")
phaseReport(thisGenotype,haplotypes)
# use haplotype frequencies to rank candidate haplotype groups.
phaseReport(thisGenotype,haplotypes, haploFreqs)
# return only the best haplotype group for each genotype.
phaseReport(thisGenotype,haplotypes, haploFreqs, outFormat="top")

# simulate a set of genootypes
my.genotypes <- simGenoFromHaplo(haploTable=haplotypes, haploFreqs=haploFreqs , n=20, ploidy=2)
# get phase report on all genotypes
phaseReport(my.genotypes,haplotypes, haploFreqs, outFormat="all")	# outFormat="all" is the default
phaseReport(my.genotypes,haplotypes, haploFreqs, outFormat="top")
}
\seealso{
  \code{\link{getValidHaploGroups}}
}

