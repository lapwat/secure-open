FROM alpine:3.6

RUN apk add --no-cache \
	bash \
	curl \
	feh \
	xpdf \
	mpg123 \
	mplayer \
    leafpad \
    pcmanfm

#RUN adduser -S -G audio user
#USER user

ENV HOME /root/
WORKDIR $HOME
COPY pcmanconf/mimeapps.list .config/
COPY pcmanconf/*.desktop .local/share/applications/

COPY openurl.sh /app/

CMD ["pcmanfm", "/app/data/"]
