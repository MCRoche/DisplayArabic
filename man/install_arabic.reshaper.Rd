% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/install_required_python.R
\name{install_arabic.reshaper}
\alias{install_arabic.reshaper}
\title{Install arabic-reshaper package}
\usage{
install_arabic.reshaper(method = "auto", conda = "auto")
}
\arguments{
\item{method}{Installation method; choice of "auto", "virtualenv", or "conda"}

\item{conda}{Path to conda executable; "auto" uses reticulate to automatically find path}
}
\value{
is successfully installed
}
\description{
This function installs required arabic-reshaper python module if the
user does not have the package installed already. This module ensures
Arabic characters connect correctly.
}
