A virtual docker environment to securely open images, videos, sounds and more.

## What is working ?

File type | Extensions | App | Details
--- | --- | --- | ---
Image | tif, bmp, png, svg, jpg, jpeg | feh |
Video | mkv, mp4, webm, avi, mov | mplayer |
Sound | mp3 | mpg123 |
PDF | pdf | xpdf |
URL | url | depends of the content | put a list of link in the url file, it will be downloaded then rendered
Text | txt | leafpad |
Unknown | no_extension | leafpad | will be opened as a text file

Do not hesitate to ask support for more file types or extensions.

## Setup

```
git clone https://github.com/lapwat/secure-open-docker
cd secure-open-docker
```

Make sure you have `xhost` and `docker-compose` installed.
Put files to render into **data** folder.
Files ending in .url contains URLs

## Run

Run it!

```
./secure-open.sh
```

## Notes

Highly inspired from [acroread](https://github.com/chrisdaish/docker-acroread)
