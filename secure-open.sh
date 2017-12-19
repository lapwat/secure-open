#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo "You must specify a unique argument."
  exit 0
fi

if [[ ! -e $1 ]]; then
  echo "$1 does not exist."
  exit 0
fi

NAME=$(basename "$1")
DIR="$(cd "$(dirname "$1")"; pwd)"
VOLUME_VALUE=$DIR/$NAME:/app/data/$NAME

xhost +local:docker
docker run -v $VOLUME_VALUE -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/snd --device /dev/dri -e DISPLAY=unix$DISPLAY secure-open
