#!/bin/bash

usage() {
  echo -e "\nUsage: ./secure_open.sh [-w] path/to/file_or_directory\n" 1>&2
  exit 1
} 

# check that an argument was given
if [[ $# -eq 0 ]]; then
  echo "You must specify a file or directory to open."
  usage
fi

for RELATIVE_PATH; do true; done
NAME=$(basename "$RELATIVE_PATH") || exit 1
DIR=$(cd "$(dirname "$RELATIVE_PATH")"; pwd) || exit 1
ABSOLUTE_PATH="$DIR/$NAME"

# check if read-write option was given
RW=false
while getopts "w" OPT
do
  case "$OPT" in
    w)
      RW=true
      ;;
    \?)
      usage
      ;;
  esac
done
if [[ "$RW" = true ]]; then
  READOPTION="rw"
else
  READOPTION="ro"
fi

# check that the path exists
if [[ ! -e "$ABSOLUTE_PATH" ]]; then
  echo "$ABSOLUTE_PATH does not exist."
  usage
fi

xhost +local:docker
ABSOLUTE_PATH="$ABSOLUTE_PATH" NAME="$NAME" READOPTION="$READOPTION" docker-compose up -d
