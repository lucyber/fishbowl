#!/bin/bash

export IN_API_KEY={{ NEWS_API_TOKEN }}

newsfile={{ DISPLAY_DIRECTORY }}/news/newsfile

echo "Top 20 Headlines with 'cyber' in the Title" > $newsfile
echo >> $newsfile
news search cyber >> $newsfile
echo >> $newsfile
echo "Top 20 Headlines with 'hacked' in the Title" >> $newsfile
echo >> $newsfile
news search hacked >> $newsfile
echo >> $newsfile
echo "Top 20 Headlines with 'computing' in the Title" >> $newsfile
echo >> $newsfile
news search computing >> $newsfile
echo >> $newsfile
