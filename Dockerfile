FROM alpine

RUN apk add --no-cache \
	python3 \
	feh \
	mpg123 \
	xpdf

# Video
#	mesa ? \
#	mesa-dev ? \
#	mpv or mplayer or vlc \
# File Manager
#	midnight commander or pcmanfm -> font not rendered :(

RUN mkdir /app/
WORKDIR /app/
ADD open_all.py .

CMD ["python3", "./open_all.py"]
