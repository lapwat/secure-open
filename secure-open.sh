#!/bin/bash

if [[ $# -eq 0 ]]; then
  echo "You must specify a file or directory to open."
  exit 0
fi

for LASTARG; do true; done
if [[ ! -e "$LASTARG" ]]; then
  echo "$LASTARG does not exist."
  exit 0
fi

RW=false
while getopts "w" OPT
do
  case "$OPT" in
    w)
      RW=true
      ;;
  esac
done

NAME=$(basename "$LASTARG")
DIR="$(cd "$(dirname "$LASTARG")"; pwd)"
if [[ "$RW" = true ]]; then
  READOPTION="rw"
else
  READOPTION="ro"
fi
VOLUME_VALUE="$DIR"/"$NAME":/app/data/"$NAME":"$READOPTION"

xhost +local:docker
docker run -v "$VOLUME_VALUE" -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/snd --device /dev/dri -e DISPLAY=unix"$DISPLAY" lapwat/secure-open
