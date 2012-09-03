\docType{methods}
\name{tableHaploToList}
\alias{tableHaploToList}
\title{Haplotype table to haplotype list}
\usage{
  tableHaploToList(haploTable,
    locusNames = colnames(haploTable))
}
\arguments{
  \item{haploTable}{A data.frame of alleles making up the
  haplotypes. One columm per locus, one row per haplotype.
  The rownames should contain the haplotype ids.}

  \item{locusNames}{A character vector giving the names of
  the loci which should match the column names of the
  haploTable}
}
\value{
  Haplotypes as a list of lists.
}
\description{
  Converts a data.frame of haplotypes to a list of lists
  with haplotypes at the top level and list of loci (with
  their alleles) beneath.
}
\details{
  Summary paragraph outlining method
}

