\name{togows-package}
\alias{togows-package}
\alias{togows}
\docType{package}
\title{
TogoWS REST API client
}
\description{
Entry retrival and database search for life science databases via TogoWS REST API.
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
}
\author{
Mitsuteru Nakao

Maintainer: Mitsuteru Nakao <n@bioruby.org> <mn@kazusa.or.jp>
}
\references{
\item TogoWS http://togows.dbcls.jp/
\item TogoWS REST API http://togows.dbcls.jp/site/en/rest.html
}

\keyword{ package }
\keyword{ IO }

\seealso{
\code{\link[RCurl:RCurl-package]{RCurl}}
}
\examples{
# Entry retrieval
togows_entry("ncbi-genbank/HUMIGHAF")
togows_entry("ncbi-genbank/HUMIGHAF.fasta")
togows_entry("ncbi-genbank", "HUMIGHAF", format = "fasta")
togows_entry("ncbi-genbank", "HUMIGHAF", "definition")
togows_entry("ncbi-genbank", "HUMIGHAF", "features")
togows_entry("ncbi-genbank", "HUMIGHAF", "references")
togows_entry("ncbi-genbank", "HUMIGHAF", "seq")

# Database search
togows_search("ebi-uniprot", "lung+cancer")
togows_search("ebi-uniprot", "lung+cancer", count = TRUE)
togows_search("ebi-uniprot", "lung+cancer", offset = 1, limit = 100)
}
