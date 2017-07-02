#!/bin/bash

videoDirectory=./videos
targetListFile=./Links.res
searchKeyword=""
numberToDL=2
debug=1

while getopts ":l:t:a:n:" options;
do
  case "${options}" in
      a)numberToDL=${OPTARG};;
      n)searchKeyword=${OPTARG};;
       l)targetListFile=${OPTARG};;
       t)videoDirectory=${OPTARG};;

       o)echo "other";;
  esac
done

if [ $debug -eq "1" ]
then
    echo "debug:"
    echo "videoDirectory: $videoDirectory"
    echo "targetListFile: $targetListFile"
    echo "numberToDL: $numberToDL"
    echo "keyword: $searchKeyword"
fi
#
# if [ $keyword -eq "" ]
# then
#     echo "keyword not defined";
#     exit -1;
# fi
#
# ./search.sh $searchKeyword $targetListFile
