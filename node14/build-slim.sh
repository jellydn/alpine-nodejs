#/bin/sh

docker build \
  -t jellydn/alpine-nodejs:slim-14.21.1 \
  -t jellydn/alpine-nodejs:slim-14.21 \
  -t jellydn/alpine-nodejs:slim-14 \
  -f slim.dockerfile .
