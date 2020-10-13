bidi <- arabic_reshaper <- NULL

.onLoad <- function(libname, pkgname){

  # Delay load of required python package?

  bidi <<-reticulate::import("bidi.algorithm")

  arabic_reshaper <<-reticulate::import("arabic_reshaper")

}
