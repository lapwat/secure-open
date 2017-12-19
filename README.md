A virtual docker environment to securely open images, videos, sounds and more.

![Screenshot](screenshot.png)

## What is working ?

File type | Renderer | Associated extensions
--- | --- | ---
Image | feh | tif, tiff, bmp, png, jpg, jpeg, gif, ico
Video | mpv | mkv, mp4, webm, avi
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

## Run

Make sure you have `xhost` installed.

```
./secure-open.sh path
```

The path could be either a file or a directory. It will be mounted as a readable and writable volume.