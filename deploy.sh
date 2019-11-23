#!/bin/bash

typeset PUB=/usr/lib/dart/bin/pub
export https_proxy="http://10.230.1.1:8080"
echo "======================"
echo "refreshing build stack"
echo "======================"
$PUB get
$PUB global activate webdev
echo 
echo "======================"
echo "running build"
echo "======================"
$PUB global run webdev build --output=web:build

typeset INSTALLDIR=/home/myroot/Software/NightScoutReporter
echo 
echo "======================"
echo "deploying to $INSTALLDIR"
echo "======================"
rm -rf $INSTALLDIR
mkdir $INSTALLDIR
cp -r build/* $INSTALLDIR
cp settings.json $INSTALLDIR
unrar x nr-pdfmake.rar $INSTALLDIR
echo 
echo "======================"
echo "deployed to $INSTALLDIR"
echo "FINISHED"
echo "======================"

