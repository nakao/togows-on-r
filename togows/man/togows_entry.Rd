\name{togows_entry}
\alias{togows_entry}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Entry retrieval }
\description{
Entry retrieval for life science database via TogoWS RESTful entry API
}
\usage{
togows_entry(db, id = NULL, field = NULL, format = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{db}{ database name}
  \item{id}{ entry id }
  \item{field}{ field name }
  \item{format}{ format name }
}
\details{
  ~~ If necessary, more details than the description above ~~
}
\value{
  ~Describe the value returned
  If it is a LIST, use
  \item{comp1 }{Description of 'comp1'}
  \item{comp2 }{Description of 'comp2'}
  ...
}
\references{ TogoWS RESTful API http://togows.dbcls.jp/site/en/rest.html }
\author{ Mitsuteru Nakao }
\note{ ~~further notes~~ 

 ~Make other sections like Warning with \section{Warning }{....} ~
}
\seealso{ See Also as \code{\link{togows_search}} }
\examples{
# GET http://togows.dbcls.jp/entry/genbank/HUMIGHAF
togows_entry("genbank/HUMIGHAF")
togows_entry("genbank", "HUMIGHAF")
togows_entry(db="genbank", id="HUMIGHAF")

# GET http://togows.dbcls.jp/entry/genbank/HUMIGHAF.fasta
togows_entry("genbank/HUMIGHAF.fasta")
togows_entry("genbank", "HUMIGHAF", format = "fasta")

# GET http://togows.dbcls.jp/entry/genbank/HUMIGHAF/definition
togows_entry("genbank/HUMIGHAF/definition")
togows_entry("genbank", "HUMIGHAF", "definition")
togows_entry(db="genbank", id="HUMIGHAF", field="definition")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ IO }
\keyword{ connection }% __ONLY ONE__ keyword per line
