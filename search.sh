#!/bin/bash

# Debug variables
rootAdresse="https://www.youtube.com/results?sp=EgIQAQ%253D%253D&q="


#   /**
#   /* script retrieving the urls from keyword
#   /* @param keyword ($1) the research keyword
#   /* @param the result file
#   /* @param target directory (need to exist)
#   /**

# keyword filtered (spaces replaced by +)
keyword=`echo "$1" | sed 's/ /+/g'`
# The file where the search result is printed
resultFile=$2

rootAdresse="https://www.youtube.com/results?sp=EgIQAQ%253D%253D&q="
adresse="$rootAdresse+$keyword"

echo "Looking for: $keyword"
curl "$rootAdresse+$keyword" | sed -n 's/.*href="\(\/watch?v[^"]*\).*/\1/p' > $resultFile
