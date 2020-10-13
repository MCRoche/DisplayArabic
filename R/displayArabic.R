#' Display Arabic Correctly
#'
#'  This function displays Arabic characters in the correct order
#'  using the correct connections. It calls a python file in the
#'  DisplayArabic package that reverses the order of the Arabic
#'  characters using the python-bidi module and called the correct
#'  character form based on the character's position in the word
#'  use the python arabic.reshaper module. The object the function
#'  returns will display Arabic strings correctly in ggplot.
#'
#'
#' @param Arabic_string String you want to display in ggplot
#' @return A string of readable Arabic
#' @export displayArabic
displayArabic <- function(Arabic_string){

  bidi <- reticulate::import("bidi.algorithm")
  arabic_reshaper <- reticulate::import("arabic_reshaper")

  correct_Arabic <- bidi$get_display(arabic_reshaper$arabic_reshaper$reshape(Arabic_string))
  return(correct_Arabic)
}
