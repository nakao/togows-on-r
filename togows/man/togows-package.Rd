\name{togows-package}
\alias{togows-package}
\alias{togows}
\docType{package}
\title{
Geting entry and search results of life science databases via TogoWS RESTful API.
~~ package title ~~
}
\description{
Geting entry, entry fields and search results of life science databases via TogoWS RESTful API.
~~ A concise (1-5 lines) description of the package ~~
}
\details{
\tabular{ll}{
Package: \tab togows\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2009-02-13\cr
License: \tab GPL\cr
LazyLoad: \tab yes\cr
}
~~ An overview of how to use the package, including the most important ~~
~~ functions ~~
}
\author{
Mitsuteru Nakao

Maintainer: Mitsuteru Nakao <yourfault@somewhere.net>
}
\references{
TogoWS http://togows.dbcls.jp/
}

\keyword{ package }
\keyword{ IO }

\seealso{
~~ Optional links to other man pages, e.g. ~~
~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
}
\examples{
togows_entry("genbank/HUMIGHAF")
togows_entry("genbank/HUMIGHAF.fasta")
togows_entry("genbank", "HUMIGHAF", format = "fasta")
togows_entry("genbank", "HUMIGHAF", "definition")

togows_search("uniprot", "lung+cancer")
togows_search("uniprot", "lung+cancer", count = TRUE)
togows_search("uniprot", "lung+cancer", 1, 100)
}
