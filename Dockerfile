FROM alpine

RUN apk add --no-cache \
	bash \
	feh \
	mpg123 \
	xpdf \
	mplayer

RUN mkdir /app/
WORKDIR /app/
ADD open_all.sh .

CMD ["./open_all.sh"]
