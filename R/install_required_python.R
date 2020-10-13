#' Install python-bidi package
#'
#' This function installs required bidirectional python module if the
#' user does not have the package installed already. This module reverses
#' the order of the characters.
#'
#'
#' @param method Installation method; choice of "auto", "virtualenv", or "conda"
#' @param conda Path to conda executable; "auto" uses reticulate to automatically find path
#' @return bidi is successfully installed
#' @export install_bidi
install_bidi <- function(method = "auto", conda = "auto"){
  reticulate::py_install("python-bidi",
                         method = method,
                         conda = conda)
}

#' Install arabic-reshaper package
#'
#' This function installs required arabic-reshaper python module if the
#' user does not have the package installed already. This module ensures
#' Arabic characters connect correctly.
#'
#' @param method Installation method; choice of "auto", "virtualenv", or "conda"
#' @param conda Path to conda executable; "auto" uses reticulate to automatically find path
#' @return  is successfully installed
#' @export install_arabic.reshaper
install_arabic.reshaper <- function(method = "auto", conda = "auto"){
  reticulate::py_install("arabic-reshaper",
                         method = method,
                         conda = conda,
                         pip = TRUE)
}

#' Set python path
#'
#' This function allows the User to set to their preferred version of
#' python. In particular, if the User has already installed python-bidi
#' or arabic-reshaper, the User can choose set the path here to where
#' those packages are installed.
#'
#'
#' @param pth path to User's preferred python version; must be a string
#' @return reticulate using the preferred python version, defaults to return of system("which python")
#' @export set_python_path
set_python_path <- function(pth="general"){
  if (pth=="general"){
    pth <- system("which python",intern = T)
  }
    reticulate::use_python(pth,required = T)
}
