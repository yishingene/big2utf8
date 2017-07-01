#' convert file format from big5 to utf8
#'
#' This function allows you to covert file from big5 to utf8.
#' @param filename This is source file.
#' @param newfile This is destination file.
#' @keywords big5
#' @export
#' @examples
#' big2utf8('sourcefile.txt','newfile.csv')
big2utf8 <- function(filename,newfile){
  data <- readLines(filename, encoding="big5")
  data <- iconv(data, "big5", "utf8", sub="?")
  writeLines(data, newfile) 
}
