\name{togows_search}
\alias{togows_search}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Database search }
\description{
Database search for life science database via TogoWS REST entry API
}
\usage{
togows_search(db, query_string = NULL, offset = FALSE, limit = 10, count = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{db}{ Database / namespace }
  \item{query_string}{ keywords or query in Common Query Language }
  \item{offset}{ Offset  }
  \item{limit}{ Limit }
  \item{count}{ count }

The count argument is to know the total count of search hits. The offset and limit arguments are for paginating the search results. 
}
\details{
}
\value{
The value returned is id / accession vector.
}
\references{ TogoWS REST API http://togows.dbcls.jp/site/en/rest.html }
\author{ Mitsuteru Nakao }
\note{
}
\seealso{ See Also as \code{\link{togows_entry}} }
\examples{
# GET http://togows.dbcls.jp/search/ebi-uniprot/lung+cancer
togows_search("ebi-uniprot/lung+cancer")
togows_search("ebi-uniprot", "lung+cancer")
togows_search(db="ebi-uniprot", query_string="lung+cancer")

# To know how many record hits
# GET http://togows.dbcls.jp/search/ebi-uniprot/lung+cancer/count
togows_search("ebi-uniprot/lung+cancer", count=TRUE)
togows_search("ebi-uniprot", "lung+cancer", count=TRUE)
togows_search(db="ebi-uniprot", query_string="lung+cancer", count=TRUE)

# Retrive the first 100 IDs of hits
# GET http://togows.dbcls.jp/search/ebi-uniprot/lung+cancer/1,100
togows_search("ebi-uniprot/lung+cancer", offset=1, limit=100)
togows_search("ebi-uniprot", "lung+cancer", offset=1, limit=100)
togows_search(db="ebi-uniprot", query_string="lung+cancer", offset=1, limit=100)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ IO }
\keyword{ connection }% __ONLY ONE__ keyword per line
