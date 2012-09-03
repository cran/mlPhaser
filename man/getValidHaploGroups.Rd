\docType{methods}
\name{getValidHaploGroups}
\alias{getValidHaploGroups}
\title{Get haplo groups for a genotype}
\usage{
  getValidHaploGroups(genotype, haplotypes)
}
\arguments{
  \item{genotype}{The genotype in question. Can be
  data.frame or list of lists format}

  \item{haplotypes}{The set of candidate haplotypes.}
}
\value{
  A list of valid haplotype groups (each itself a list of
  haplotypes).
}
\description{
  Get all valid groups of haplotypes that fully explain a
  genotype.
}
\details{
  Wrapper function to set up and control the recursive
  search for groups of haplotyps, each of which are
  consistent with the genotype in question. Makes use of
  recursion via the function \code{\link{recurseHaplos}}
}
\examples{
# create a data frame to store alleles of haplotypes. Columns are loci.
haplotypes <- data.frame(	A= c("a","b","c","a","b","c","b"),
					B= c("a","b","c","b","c","a","a"),
					C= c("a","b","c","b","c","a","a") )
# give the haplotypes sensible names as rownames.
rownames(haplotypes) <- apply(haplotypes, 1, paste,sep="" , collapse="")
# load a genotype as a table
thisGenotype <- data.frame(A.1="a", A.2="b", B.1="a", B.2="b",C.1="a", C.2="b")
# find groups of haplotypes as a list of lists
my.valid.groups <- getValidHaploGroups(thisGenotype,haplotypes)
# look at the list structure of the valid groups list
str(my.valid.groups)
# see phaseReport() for more friendly function
}
\seealso{
  \code{\link{phaseReport}}
}

