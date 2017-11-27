A virtual docker environment to securely open images, videos, sounds and more.

## SETUP

```
git clone https://github.com/lapwat/secure-open-docker
cd secure-open-docker
docker build . -t secure-open
```

Put images to render into *data* folder.

## RUN

```
docker run -v $(pwd)/data:/data \   
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -e DISPLAY=unix$DISPLAY \
        secure-open
```

If it does not work, try:
```
docker run -v $(pwd)/data:/data \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -e uid=$(id -u) \
        -e gid=$(id -g) \
        -e DISPLAY=unix$DISPLAY \
        secure-open
```

## FAQ

Inspired of [acroread](https://github.com/chrisdaish/docker-acroread)

Note: If you receive the following Gtk error:

```
Gtk-WARNING **: cannot open display: unix:0.0
```

Simply allow the docker user to communicate with your X session:

```
xhost +local:docker
```
