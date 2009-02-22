require("RUcrl")

`togows_search` <-
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

