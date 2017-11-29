A virtual docker environment to securely open images, videos, sounds and more.

## What is working ?

File type | Extensions | App
--- | --- | --- | ---
Image | tif, bmp, png, svg, jpg, jpeg | feh
Video | mkv, mp4, webm, avi, mov | mplayer
Sound | mp3 | mpg123
PDF | pdf | xpdf
URL | url | curl
Text | txt | leafpad

Unknown extensions will be opened as text files.
.url files should contain a list of URLs to be downloaded then rendered


Do not hesitate to ask support for more file types or extensions.

## Setup

```
git clone https://github.com/lapwat/secure-open-docker
cd secure-open-docker
```

Make sure you have `xhost` and `docker-compose` installed.
Put files you want to render into **data** folder.

## Run

Run it!

```
./secure-open.sh
```

## Notes

Highly inspired from [acroread](https://github.com/chrisdaish/docker-acroread)
