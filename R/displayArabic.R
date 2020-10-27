#' Display Arabic in ggplot
#'
#'  This function displays Arabic characters in the correct order
#'  using the correct connections in ggplot. It calls a python file in the
#'  DisplayArabic package that reverses the order of the Arabic
#'  characters using the python-bidi module and calls the correct
#'  character form based on the character's position in the word
#'  using the python arabic-reshaper module by Abdullah Diab and contributors
#'  (see: github.com/mpcabd/python-arabic-reshaper). The object the function
#'  returns will display Arabic strings correctly in ggplot.
#'
#'
#' @param Arabic_string String you want to display in ggplot
#' @return An Arabic string that will display correctly in ggplot
#' @export displayArabic
#' @examples
#' # An example of an Arabic plot label with and without displayArabic()
#' library(ggplot2) # Needed for plotting
#'
#' ## First, generate random points:
#' x <- data.frame(a=runif(10),b=runif(10))
#'
#' ## Plotting the points without displayArabic():
#' ggplot(x, aes(a,b)) +
#'     geom_point() +
#'     xlab("سلام")
#'
#' ## Plotting the points with displayArabic():
#' ggplot(x, aes(a,b)) +
#'     geom_point() +
#'     xlab(displayArabic("سلام"))

displayArabic <- function(Arabic_string){

  if (reticulate::py_module_available("bidi")&reticulate::py_module_available("arabic_reshaper")){

    Arabic_string <- arabic_reshaper$arabic_reshaper$reshape(Arabic_string)
    correct_Arabic <- bidi$get_display(Arabic_string)

    return(correct_Arabic)

  } else if (!(reticulate::py_module_available("bidi"))&!(reticulate::py_module_available("arabic_reshaper"))) {

    # Error is neither bidi nor arabic_reshaper is installed:
    stop("Error: Please install the required python modules `bidi` and `arabic_reshaper`. This can be done using install_bidi() and install_arabic.reshaper() from the DisplayArabic package.")

    } else if (!(reticulate::py_module_available("bidi"))&(reticulate::py_module_available("arabic_reshaper"))) {

      # Error if only bidi is missing:
      stop("Error: Please install the required python module `bibi`. \n This can be done using install_bidi() from the DisplayArabic package.")

      } else if ((reticulate::py_module_available("bidi"))&!(reticulate::py_module_available("arabic_reshaper"))) {

        # Error if only arabic_reshaper is missing:
        stop("Error: Please install the required python module `arabic_reshaper`. \n This can be done using install_arabic.reshaper() from the DisplayArabic package.")
  }

}
