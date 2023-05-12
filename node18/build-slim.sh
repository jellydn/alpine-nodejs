#/bin/sh

docker build \
  -t jellydn/alpine-nodejs:slim-18.16.0 \
  -t jellydn/alpine-nodejs:slim-18.16 \
  -t jellydn/alpine-nodejs:slim-18 \
  -f slim.dockerfile .
