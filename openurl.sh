#!/bin/bash
cd /app/data/
cat $1 | while read line; do
	curl $line -O
done
