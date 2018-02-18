# QGIS birthday splash screen project

# Purpose

The goal is to help people remember when they started working with QGIS software using the splash screen and corresponding release date

## The methodology

To reproduce, you will need [imagemagick](https://www.imagemagick.org) software.

* We retrieved the original images from [QGIS Github repository](http://github.com/qgis/QGIS). All of them where PNG files except for 0.1 (embeded binary image in `splashscreen.cpp` extracted with Python PIL and Numpy) and 0.2 versions (`splash.xpm`). We've made the conversion to PNG in this cases.
* Then, we resized manually recent images of 2.14, 2.16, 2.18 to `600*287` (more or less the defaut splash screen size)
* We applied a resize to resize and center all images to the max width 704 and max height 376 with

      resize-for-gif.sh

* We added text for the date using associated info in `date-releases-qgis.ods` building exact command line within LibreOffice. You can run the result with:

      add-text-to-resized-centered-images-for-gif.sh

* Lastly, we do the conversion with only images and images with text

      convert-to-gif.sh

The result files are:

* [qgis-splash-screens-with-text.gif](qgis-splash-screens-with-text.gif)
* [qgis-splash-screens-no-text.gif](qgis-splash-screens-no-text.gif)

## Improvements & issues

For textual version, we could improve the result to add to date the named versions for early release of QGIS as the splash screen was not mentioning them.

Beware that the conversion of resulting GIF on Twitter damage it so you can't see the different versions date clearly...

## Contact

thomas(dot)gratier(at)webgeodatavore.com
