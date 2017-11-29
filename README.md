A virtual docker environment to securely open images, videos, sounds and more.

## What is working ?

File type | Renderer | Associated extensions
--- | --- | ---
Image | feh | tif, bmp, png, svg, jpg, jpeg
Video | mplayer | mkv, mp4, webm, avi, mov
Sound | mpg123 | mp3
PDF | xpdf | pdf
URL | curl | url
Text | leafpad | txt

Do not hesitate to ask for support for more file types or extensions.

Unknown extensions will be opened as text files.

.url files should contain a list of URLs to be downloaded then rendered

## Setup

```
git clone https://github.com/lapwat/secure-open-docker
cd secure-open-docker
```

Put files you want to render into **data** folder.

## Run

Make sure you have `xhost` and `docker-compose` installed.

```
./secure-open.sh
```
