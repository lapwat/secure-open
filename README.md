A virtual docker environment to securely open images, videos, sounds and more.

## Todo

- [ ] Text
- [x] Image
- [x] PDF
- [ ] Video
- [x] Sound
- [ ] URL
- [ ] File manager

## Setup

```
git clone https://github.com/lapwat/secure-open-docker
cd secure-open-docker
docker build . -t secure-open
```

Put files to render into **data** folder.
Alternatively, you can directly mount the

## Run

Make sure you allowed the docker user to communicate with your X session:
```
xhost +local:docker
```

Run it!

```
docker run -v $(pwd)/data:/app/data \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -e DISPLAY=$DISPLAY \
        --device /dev/snd \
        secure-open
```

## Notes

Highly inspired from [acroread](https://github.com/chrisdaish/docker-acroread)