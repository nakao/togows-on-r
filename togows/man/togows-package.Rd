\name{togows-package}
\alias{togows-package}
\alias{togows}
\docType{package}
\title{
TogoWS RESTful API for R
}
\description{
Entry retrival and database search for life science databases via TogoWS RESTful API.
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

Maintainer: Mitsuteru Nakao <n@bioruby.org> <mn@kazusa.or.jp>
}
\references{
\item TogoWS http://togows.dbcls.jp/
\item TogoWS RESTful API http://togows.dbcls.jp/site/en/rest.html
}

\keyword{ package }
\keyword{ IO }

\seealso{
\code{\link[RCurl:RCurl-package]{RCurl}} ~~
}
\examples{
# Entry retrieval
togows_entry("genbank/HUMIGHAF")
togows_entry("genbank/HUMIGHAF.fasta")
togows_entry("genbank", "HUMIGHAF", format = "fasta")
togows_entry("genbank", "HUMIGHAF", "definition")

# Database search
togows_search("uniprot", "lung+cancer")
togows_search("uniprot", "lung+cancer", count = TRUE)
togows_search("uniprot", "lung+cancer", FALSE, 1, 100)
}
