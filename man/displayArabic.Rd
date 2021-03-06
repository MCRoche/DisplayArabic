% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/displayArabic.R
\name{displayArabic}
\alias{displayArabic}
\title{Display Arabic in ggplot}
\usage{
displayArabic(Arabic_string)
}
\arguments{
\item{Arabic_string}{String you want to display in ggplot}
}
\value{
An Arabic string that will display correctly in ggplot
}
\description{
This function displays Arabic characters in the correct order
using the correct connections in ggplot. It calls a python file in the
DisplayArabic package that reverses the order of the Arabic
characters using the python-bidi module and calls the correct
character form based on the character's position in the word
using the python arabic-reshaper module by Abdullah Diab and contributors
(see: github.com/mpcabd/python-arabic-reshaper). The object the function
returns will display Arabic strings correctly in ggplot.
}
\examples{
# An example of an Arabic plot label with and without displayArabic()
library(ggplot2) # Needed for plotting

## First, generate random points:
x <- data.frame(a=runif(10),b=runif(10))

## Plotting the points without displayArabic():
ggplot(x, aes(a,b)) +
    geom_point() +
    xlab("سلام")

## Plotting the points with displayArabic():
ggplot(x, aes(a,b)) +
    geom_point() +
    xlab(displayArabic("سلام"))
}
