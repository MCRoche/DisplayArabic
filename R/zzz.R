bidi <- NULL

.onLoad <- function(libname, pkgname){

  # Delay load of required python package
  bidi <<- reticulate::import("python-bidi",delay_load = TRUE)

#  reticulate::configure_environment(pkgname)

  #system("pip install python-bidi")

#  pth <- system("which python",intern = T)
#  reticulate::use_python(pth,required = T)

}
