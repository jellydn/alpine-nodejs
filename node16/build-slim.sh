#/bin/sh

docker build \
  -t jellydn/alpine-nodejs:slim-16.20.0 \
  -t jellydn/alpine-nodejs:slim-16.20 \
  -t jellydn/alpine-nodejs:slim-16 \
  -f slim.dockerfile .
