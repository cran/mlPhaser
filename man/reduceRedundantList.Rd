\docType{methods}
\name{reduceRedundantList}
\alias{reduceRedundantList}
\title{Remove redundant haplotype groups}
\usage{
  reduceRedundantList(startList)
}
\arguments{
  \item{startList}{A list of haplotype groups (each is a
  list of haplotypes).}
}
\value{
  A list of haplotype groups but each group is unique.
}
\description{
  Removes redundant groups of haplotypes from a common
  list.
}
\details{
  The recursive method \code{\link{recurseHaplos}} of
  finding groups of consistent haplotypes does not
  differentiate, re-arranged versions of the same set. e.g.
  keeps aaa/bbb AND bbb/aaa. This function removes that
  redundancy from the results. uses the length of intersect
  to determine if two lists contain all the same elements.
}

