FROM alpine

RUN apk add --no-cache \
  mesa-dri-swrast \
  bash \
  curl \
  feh \
  xpdf \
  mpg123 \
  leafpad \
  mpv \
  pcmanfm

#RUN adduser -S -G audio user
#USER user

ENV HOME /root/
WORKDIR $HOME
COPY .config/pcmanconf/mimeapps.list .config/
COPY .config/pcmanconf/*.desktop .local/share/applications/

CMD ["pcmanfm", "/app/data/"]

# libva \
# mesa-gl \
# mesa \
# mesa-dev \
# mesa-dri-intel \
