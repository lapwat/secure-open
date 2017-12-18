FROM alpine:3.6

RUN apk add --no-cache \
	bash \
	curl \
	feh \
	xpdf \
	mpg123 \
	leafpad \
	mesa \
	mesa-dev \
	mesa-dri-swrast \
	mpv \
	pcmanfm

#RUN adduser -S -G audio user
#USER user

ENV HOME /home/user
WORKDIR $HOME
COPY pcmanconf/mimeapps.list .config/
COPY pcmanconf/*.desktop .local/share/applications/

COPY openurl.sh /app/

CMD ["pcmanfm", "/app/data/"]
