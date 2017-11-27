FROM alpine

RUN apk add --update \
	feh

CMD ["feh", "/renderme.png"]
