#!/bin/bash

files="$(ls -d -1 "$PWD"/data/*)"

for file in $files; do
	# images
	if [[ $file =~ \.(tif|bmp|png|svg|jpg|jpeg)$ ]]; then
		feh "$file"
	# pdfs
	elif [[ $file =~ \.(pdf)$ ]]; then
		xpdf "$file"
	# sounds
	elif [[ $file =~ \.(wav|flac|mp3)$ ]]; then
		mpg123 "$file"
    # video
    elif [[ $file =~ \.(mp4|webm|mkv)$ ]]; then
        mplayer "$file"
    # urls
    elif [[ $file =~ \.(html|xml)$ ]]; then
        dillo "$file"
    # urls
    elif [[ $file =~ \.(url)$ ]]; then
        dillo "$(cat $file)"
    else
    # text
        leafpad "$file"
    fi

done
