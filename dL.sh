#/bin/bash

#   /**
#   /* script dowloading videos from file
#   /* @param file the input file with videos urls
#   /* @param nblines the number of videos to download (from top to bottom)
#   /* @param target directory (need to exist)
#   /**

#Note: [improvement]: other selection than top->bottom (random, filter/regex...)

file=$1
nblines=$2
target=$3

# Create the target path if does not exist
mkdir -p $target

for file in `head -n $nblines $file`
do
    youtube-dl -o videos/"%(title)s-%(id)s.%(ext)s"  "https://www.youtube.com$file"
done
