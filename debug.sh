#!/bin/bash

typeset PUB=/usr/lib/dart/bin/pub
export https_proxy="http://10.230.1.1:8080"
echo "======================"
echo "refreshing build stack"
echo "======================"
$PUB get
$PUB global activate webdev 2.7.2
echo 
echo "======================"
echo "running debug"
echo "======================"
$PUB global run webdev serve web:3001

echo "======================"
echo "FINISHED"
echo "======================"

