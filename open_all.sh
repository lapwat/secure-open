#!/bin/bash

files="$(ls -d -1 "$PWD"/data/*.*)"

for file in $files; do
	# images
	if [[ $file =~ \.(tif|bmp|png|svg|jpg|jpeg)$ ]]; then
		feh "$file"
	fi
	
	# pdfs
	if [[ $file =~ \.(pdf)$ ]]; then
		xpdf "$file"
	fi

	# sounds
	if [[ $file =~ \.(wav|flac|mp3)$ ]]; then
		mpg123 "$file"
	fi

    if [[ $file =~ \.(mp4|webm|mkv)$ ]]; then
        mplayer "$file"
    fi
done
