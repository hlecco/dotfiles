#!/bin/sh
sed -i \
         -e 's/#fdf6e3/rgb(0%,0%,0%)/g' \
         -e 's/#93a1a1/rgb(100%,100%,100%)/g' \
    -e 's/#eee8d5/rgb(50%,0%,0%)/g' \
     -e 's/#2aa198/rgb(0%,50%,0%)/g' \
     -e 's/#eee8d5/rgb(50%,0%,50%)/g' \
     -e 's/#586e75/rgb(0%,0%,50%)/g' \
	"$@"