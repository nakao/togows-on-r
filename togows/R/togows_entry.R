require('RCurl')

`togows_entry` <-
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

