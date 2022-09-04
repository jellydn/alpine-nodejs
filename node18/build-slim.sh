#/bin/sh

docker build \
  -t jellydn/alpine-nodejs:slim-18.8.0 \
  -t jellydn/alpine-nodejs:slim-18.8 \
  -t jellydn/alpine-nodejs:slim-18 \
  -f slim.dockerfile .
