FROM alpine

RUN apk add --update \
	feh

RUN mkdir data
CMD ["feh", "/data/*"]
