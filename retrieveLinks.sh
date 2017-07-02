#!/bin/bash
#keyword=`echo "$1" | sed 's/ /+/g'`
url=$1
echo "Looking for: $url"
cssClass="spf-link  playlist-video clearfix  yt-uix-sessionlink"


rootAdresse="https://www.youtube.com/results?sp=EgIQAQ%253D%253D&q="
adresse="$rootAdresse+$url"
adresse="https://www.youtube.com/watch?v=iS46IzvCemI&list=PLADS88MXpvG6vbWlI71V07GmE_WzfLQhZ"

curl "$adresse" > temp.html
cat temp.html | grep "$cssClass" | sed -n 's/.*href="\(\/watch?v[^"]*\).*/\1/p' > linksUrl.res
