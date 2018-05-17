The purpose of this tool is to open files from unknown sources without putting in danger the integrity of your system. Files are rendered through X11 mirroring from the Docker container to your machine. Opened files are never opened in your environment and never have access to it. I chose Docker containers because they are fast, light, easy to build and have a great community that I trust about security.

The tool supports text, video, image, pdf formats.

## What is working ?

File type | Renderer | Associated extensions
--- | --- | ---
Image | feh | tif, tiff, bmp, png, jpg, jpeg, gif, ico
Video | mpv | mkv, mp4, webm, avi
Sound | mpg123 | mp3
PDF | xpdf | pdf
URL | curl | url
Text | leafpad | txt

Unknown extensions will be opened as text files.

Do not hesitate to ask for support for more file types or extensions.

.url files should contain a list of URLs. If double clicked, all URLs will be downloaded into `/app/data/` folder.

![Screenshot](screenshot.png)

## Setup

You have two choices to get the Docker image: you can **build it from source** or **pull it from Docker Hub**.

### Build from source

```
git clone https://github.com/lapwat/secure-open
cd secure-open
docker build . -t lapwat/secure-open
```

### or Pull from Docker Hub

```
curl -O https://raw.githubusercontent.com/lapwat/secure-open/master/secure-open.sh
docker pull lapwat/secure-open
```

## Run

Make sure you have `xhost`, `docker` and `docker-compose` installed.

```
./secure-open.sh [-w] path/to/file_or_directory
```

The path will be mounted as a readable-only volume. Specify `-w` option to mount it as a readable writable volume.
