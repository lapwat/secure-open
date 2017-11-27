FROM alpine

RUN apk add --update \
	feh

RUN mkdir -p /app/data
ADD open.sh /app
CMD ["/bin/sh", "/app/open.sh"]
