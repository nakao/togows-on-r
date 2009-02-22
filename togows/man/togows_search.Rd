\name{togows_search}
\alias{togows_search}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Database search for life science db via TogoWS RESTful API }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
togows_search(db, query_string = NULL, offset = FALSE, limit = 10, count = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{db}{ Database name }
  \item{query_string}{ keywords or query in Common Query Language }
  \item{offset}{ Offset  }
  \item{limit}{ Limit }
  \item{count}{ count }
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
\seealso{ See Also as \code{\link{togows_entry}} }
\examples{
# GET http://togows.dbcls.jp/search/uniprot/lung+cancer
togows_search("uniprot/lung+cancer")
togows_search("uniprot", "lung+cancer")
togows_search(db="uniprot", query_steing="lung+cancer")

# GET http://togows.dbcls.jp/search/uniprot/lung+cancer/count
togows_search("uniprot/lung+cancer", count=TRUE)
togows_search("uniprot", "lung+cancer", count=TRUE)
togows_search(db="uniprot", id="lung+cancer", count=TRUE)

# GET http://togows.dbcls.jp/search/uniprot/lung+cancer/1,100
togows_search("uniprot/lung+cancer", offset=1, limit=100)
togows_search("uniprot", "lung+cancer", offset=1, limit=100)
togows_search(db="uniprot", id="lung+cancer", offset=1, limit=100)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ IO }
\keyword{ connection }% __ONLY ONE__ keyword per line
