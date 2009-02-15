\name{togows_entry}
\alias{togows_entry}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
togows_entry(db, id = NULL, field = NULL, format = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{db}{ ~~Describe \code{db} here~~ }
  \item{id}{ ~~Describe \code{id} here~~ }
  \item{field}{ ~~Describe \code{field} here~~ }
  \item{format}{ ~~Describe \code{format} here~~ }
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
function(db, id = NULL, field = NULL, format = NULL)
{
  base_url <- "http://togows.dbcls.jp/entry"
  entry_url <- ""
  if (length(id) == 0 && length(field) == 0) {
    entry_url <- paste(base_url, db, sep='/')
  } else {
    if (length(id) > 0 && length(field) > 0) {
      entry_url <- paste(base_url, db, id, field, sep='/')
    } else if (length(id) > 0) {
      if (length(id) > 1) {
        entry_id <- paste(id, collapse=',')
      }
      entry_url <- paste(base_url, db, id, sep='/')
    }
    if (length(format) > 0) {
      entry_url <- paste(entry_url, format, sep='.')
    }
  }
  sub("\n$", "",  getURL(entry_url))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ IO }
\keyword{ connection }% __ONLY ONE__ keyword per line
