A virtual docker environment to securely open images, videos, sounds and more.

![Screenshot](screenshot.png)

## What is working ?

File type | Renderer | Associated extensions
--- | --- | ---
Image | feh | tif, tiff, bmp, png, jpg, jpeg, gif, ico
Video | mplayer | mkv, mp4, webm, avi
Sound | mpg123 | mp3
PDF | xpdf | pdf
URL | curl | url
Text | leafpad | txt

Do not hesitate to ask for support for more file types or extensions.

Unknown extensions will be opened as text files.

.url files should contain a list of URLs. If double clicked, all URLs will be downloaded into `data/downloads` folder.

## Setup

```
git clone https://github.com/lapwat/secure-open-docker
cd secure-open-docker
```

Put files you want to render into `data` folder.

## Run

Make sure you have `xhost` and `docker-compose` installed.

```
./secure-open.sh
```
