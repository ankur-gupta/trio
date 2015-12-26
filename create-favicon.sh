#!/bin/bash
# A script to create favicons by Ankur Gupta.
# Requires imagemagick to be installed.
# Use of -font requires that the used font is listed in ~/.imagick/type.xml.

function saveimage() {
  dim=$1
  filename=$2
  pointsize=`echo "${dim} * 0.75" | bc -l`
  corner_radius=`echo "${dim} / 3" | bc -l`

  echo "Making ${dim}x${dim} image: ${filename}"

  # Create the base square edged logo
  convert -background ${background_color} -fill ${foreground_color} \
    -pointsize ${pointsize} -size ${dim}x${dim} -gravity center \
    -font ${font} \
    label:${label} square.png

  # Round the corners
  # First create a rounded rectangle to overlay
  convert -size ${dim}x${dim} xc:none -fill ${background_color} \
    -draw "roundRectangle 0,0 ${dim},${dim} ${corner_radius},${corner_radius}" mask.png

  # Now, overlay one over the other
  convert square.png -alpha set -bordercolor transparent \
      mask.png -compose DstIn -composite ${filename}

  # Perform a cleanup
  rm -rf square.png mask.png
}

#----------------------------------------------------------------------
# Text/label
label="T"

font="OverlockBlackItalic"

# Background color
background_color='#477DCA'

# Foreground color
foreground_color='white'

# Base size
# Keep this high for .ico to correctly render
basedim=3200
#----------------------------------------------------------------------

# Create the base image in high resolution
saveimage ${basedim} favicon-${basedim}x${basedim}.png

# Create Android Chrome Icons
android_chrome_list="192"
for lowdim in ${android_chrome_list}; do \
  echo "Making ${lowdim}x${lowdim} image: android-chrome-${lowdim}x${lowdim}.png"
  convert favicon-${basedim}x${basedim}.png \
    -resize ${lowdim}x${lowdim} android-chrome-${lowdim}x${lowdim}.png
done

# Create generic favicons
android_chrome_list="16 32 96 194"
for lowdim in ${android_chrome_list}; do \
  echo "Making ${lowdim}x${lowdim} image: favicon-${lowdim}x${lowdim}.png"
  convert favicon-${basedim}x${basedim}.png \
    -resize ${lowdim}x${lowdim} favicon-${lowdim}x${lowdim}.png
done

# Create Apple icons
apple_dim_list="57 60 72 76 114 120 144 152 180"
for lowdim in ${apple_dim_list}; do \
  echo "Making ${lowdim}x${lowdim} image: apple-touch-icon-${lowdim}x${lowdim}.png"
  convert favicon-${basedim}x${basedim}.png \
    -resize ${lowdim}x${lowdim} \
    apple-touch-icon-${lowdim}x${lowdim}.png
done

# Create Microsoft icon
lowdim=144
echo "Making ${lowdim}x${lowdim} image: mstile-${lowdim}x${lowdim}.png"
  convert favicon-${basedim}x${basedim}.png \
    -resize ${lowdim}x${lowdim} \
    mstile-${lowdim}x${lowdim}.png

# Create a .ico file containing various resolutions
convert favicon-${basedim}x${basedim}.png  -bordercolor transparent -border 0 \
      \( -clone 0 -resize 16x16 \) \
      \( -clone 0 -resize 32x32 \) \
      \( -clone 0 -resize 48x48 \) \
      \( -clone 0 -resize 64x64 \) \
      -delete 0 favicon.ico

# Remove the base image
rm favicon-${basedim}x${basedim}.png
