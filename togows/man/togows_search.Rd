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
\references{ ~put references to the literature/web site here ~ }
\author{ ~~who you are~~ }
\note{ ~~further notes~~ 

 ~Make other sections like Warning with \section{Warning }{....} ~
}
\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(db, query_string = NULL, offset = FALSE, limit = 10, count = FALSE)
{
  base_url <- "http://togows.dbcls.jp/search"
  search_url <- ""
  if (length(query_string) == 0) {
    search_url <- paste(base_url, db, sep='/');
  } else {
    search_url <- paste(base_url, db, query_string, sep='/');
  }
  
  if (offset) {
    search_url <- paste(search_url, paste(offset, limit, sep=','), sep='/')
  } else if (count) {
    search_url <- paste(search_url, 'count', sep='/')
  }
  result <- getURL(search_url)
  unlist(strsplit(result, "\n"))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ IO }
\keyword{ connection }% __ONLY ONE__ keyword per line
