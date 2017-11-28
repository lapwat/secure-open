FROM alpine:3.6

RUN apk add --no-cache \
	bash \
	feh \
	xpdf \
	mplayer \
    mesa-dri-swrast \
    tini \
    dillo \
    leafpad \
    && rm -rf /var/cache/apk/*

RUN adduser -S -G audio user
USER user

WORKDIR /app
COPY open_all.sh .

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["/app/open_all.sh"]
