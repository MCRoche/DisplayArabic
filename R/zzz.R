bidi <- arabic_reshaper <- NULL

.onLoad <- function(libname, pkgname){

  bidi <<-reticulate::import("bidi.algorithm",
                             delay_load = T)

  arabic_reshaper <<-reticulate::import("arabic_reshaper",
                                        delay_load = T)

}
