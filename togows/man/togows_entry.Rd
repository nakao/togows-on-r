\name{togows_entry}
\alias{togows_entry}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Entry retrieval }
\description{
Entry retrieval for life science database via TogoWS REST entry API
}
\usage{
togows_entry(db, id = NULL, field = NULL, format = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{db}{ database / namespace }
  \item{id}{ entry id or accession }
  \item{field}{ field name }
  \item{format}{ format name (json, xml, fasta, ...) }

Available databases or namespaces are shown at http://togows.dbcls.jp/entry/ .
Available field names are shown at http://togows.dbcls.jp/entry/{namespace}/ .
}
\details{
TogoWS REST API is a proxy service for the major lifescience databases (NCBI EUtils, EBI SRS, DDBJ XML, PDBj API and KEGG API).
}
\value{
The value returned is in same as the response of TogoWS REST API which is in flat file format of the original database entry. On using field argument, the value returned is charactor. And on using format argument, the value returned is in the specified format.
}
\references{ TogoWS RESTful API http://togows.dbcls.jp/site/en/rest.html }
\author{ Mitsuteru Nakao }
\note{ 
}
\seealso{ See Also as \code{\link{togows_search}} }
\examples{
# GET http://togows.dbcls.jp/entry/ncbi-genbank/HUMIGHAF
togows_entry("ncbi-genbank/HUMIGHAF")
togows_entry("ncbi-genbank", "HUMIGHAF")
togows_entry(db="ncbi-genbank", id="HUMIGHAF")

# GET http://togows.dbcls.jp/entry/ncbi-genbank/HUMIGHAF.fasta
togows_entry("ncbi-genbank/HUMIGHAF.fasta")
togows_entry("ncbi-genbank", "HUMIGHAF", format = "fasta")

# GET http://togows.dbcls.jp/entry/ncbi-genbank/HUMIGHAF/definition
togows_entry("ncbi-genbank/HUMIGHAF/definition")
togows_entry("ncbi-genbank", "HUMIGHAF", "definition")
togows_entry(db="ncbi-genbank", id="HUMIGHAF", field="definition")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ IO }
\keyword{ connection }% __ONLY ONE__ keyword per line
