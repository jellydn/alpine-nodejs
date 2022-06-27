#/bin/sh

docker build \
  -t jellydn/alpine-nodejs:slim-18.4.0 \
  -t jellydn/alpine-nodejs:slim-18.4 \
  -t jellydn/alpine-nodejs:slim-18 \
  -f slim.dockerfile .
