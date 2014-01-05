#!/bin/bash - 


cd $HOME/youtube2mp3/test
testroot=$PWD

# Youtube has old and new style links:
url="http://youtu.be/5QuGiMAEqE8"  # Led-zep "Since I've been loving you"

odir=$testroot
rate=192

#===============================================================================
source ../youtube2mp3.sh --url="$url" --odir="$odir" --rate="$rate"


