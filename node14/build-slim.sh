#/bin/sh

docker build \
  -t jellydn/alpine-nodejs:slim-14.20.0 \
  -t jellydn/alpine-nodejs:slim-14.20 \
  -t jellydn/alpine-nodejs:slim-14 \
  -f slim.dockerfile .
