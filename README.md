# Motivation

The purpose of this tool is to open files from unknown sources without putting in danger the integrity of your system. Files are rendered through X11 mirroring from the Docker container to the host machine. Opened files are never opened in your environment and only have access to the mounted volumes / devices. The container disconnected from the internet. I chose Docker containers because they are fast, light, easy to build and have a great community that I trust about security.

The tool supports text, video, image, pdf formats.

![Screenshot](screenshot.png)

# Setup

Make sure you have `xhost` and `docker` installed.

```
$ docker run  --volume /path/to/file_or_directory:/app/data/secure:ro \
              --volume /tmp/.X11-unix:/tmp/.X11-unix \
              --network none \
              --ipc host \
              --env DISPLAY=unix${DISPLAY} \
              --device /dev/snd \
              --device /dev/dri \
              lapwat/secure-open
```

Alternatively, you can use `docker-compose`:

```
$ OPEN_PATH=/path/to/file_or_directory docker-compose up -d
```

Remove `ro` option if you want to be able to modify files from the container.

# What is working ?

File type | Renderer | Associated extensions
--- | --- | ---
Image | feh | tif, tiff, bmp, png, jpg, jpeg, gif, ico
Video | mpv | mkv, mp4, webm, avi
Sound | mpg123 | mp3
PDF | xpdf | pdf
Text | leafpad | txt

Unknown extensions will be opened as text files.

Do not hesitate to ask for support for more file types or extensions.
