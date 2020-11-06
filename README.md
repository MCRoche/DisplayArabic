# DisplayArabic
An R package that allows Arabic strings to display correctly as labels in ggplot. This is designed for macOS.
A known problem in RStudio for mac is the incorrect display of Arabic text in ggplot. The displayArabic()
function provided by package is an R wrapper for python functions that reverse the string and reconnect
the Arabic letters. This package would not be possible without Abdullah Diab and contributor's python
package, python-arabic-reshaper, available on [Abdullah Diab's github page.](https://github.com/mpcabd/python-arabic-reshaper)

This package also includes the functions install_bidi() and install_arabic.reshaper() to help
the user install the required python modules.

This package requires the R package reticulate, which automatically looks for the user's default python
path. If you do not want to use your computer's default python path (e.g., your default is to python 2.7 and you want to use the path to python 3.6), you can set the path with the function set_python_path(pth="/User/defined/path"), where "/User/defined/path" is the path to your prefered python instance.

The package requires R version 4.0.2 or higher.


## Special Thanks
Ayşe Lokmanoglu (@aysed_9), Rob Williams (@jayrobw), Olga Gasparyan (@olgasparyan),
and Michael Gibilisco (@mike_gibilisco) for helping me test this package.
