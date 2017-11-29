FROM alpine:3.6

RUN apk add --no-cache \
	bash \
	feh \
	xpdf \
	mpg123 \
	mplayer \
    mesa-dri-swrast \
    tini

RUN adduser -S  user
USER user

WORKDIR /home/user
ADD open_all.sh .

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["/home/user/open_all.sh"]
