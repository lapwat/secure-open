FROM alpine:3.6

RUN apk add --no-cache \
	bash \
	curl \
	feh \
	xpdf \
	mpg123 \
	mplayer \
    mesa-dri-swrast \
    tini \
    leafpad

#RUN adduser -S -G audio user
#USER user

WORKDIR /app
COPY open_all.sh .

#ENTRYPOINT ["/sbin/tini", "--"]

CMD ["/app/open_all.sh"]
