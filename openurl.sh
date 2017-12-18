#!/bin/bash
cd /app/data/downloads
cat $1 | while read line; do
	curl $line -O
done
exit 1