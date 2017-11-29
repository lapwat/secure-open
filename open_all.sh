#!/bin/bash
rm -rf "$PWD"/data/downloads
mkdir -p "$PWD"/data/downloads

files="$(ls -d -1 "$PWD"/data/*)"
for file in $files; do
	if [[ -f $file ]]; then
		# images
		if [[ $file =~ \.(tif|bmp|png|svg|jpg|jpeg)$ ]]; then
			feh "$file"
		# pdfs
		elif [[ $file =~ \.(pdf)$ ]]; then
			xpdf "$file"
		# sounds
		elif [[ $file =~ \.(wav|flac|mp3)$ ]]; then
			mpg123 "$file"
	    # videos
	    elif [[ $file =~ \.(mkv|mp4|webm|avi)$ ]]; then
	        mplayer "$file"
	    # urls
	    elif [[ $file =~ \.(url)$ ]]; then
	        cat $file | while  read line ; do
				cd data/downloads
				curl $line -O
				cd -
			done
	    else
	    # text
	        leafpad "$file"
	    fi
	fi
done

downloaded_files="$(ls -d -1 "$PWD"/data/downloads/*)"
for file in $downloaded_files; do
	# images
	if [[ $file =~ \.(tif|bmp|png|svg|jpg|jpeg)$ ]]; then
		feh "$file"
	# pdfs
	elif [[ $file =~ \.(pdf)$ ]]; then
		xpdf "$file"
	# sounds
	elif [[ $file =~ \.(wav|flac|mp3)$ ]]; then
		mpg123 "$file"
    # videos
    elif [[ $file =~ \.(mkv|mp4|webm|avi)$ ]]; then
        mplayer "$file"
    else
    # text
        leafpad "$file"
    fi
done