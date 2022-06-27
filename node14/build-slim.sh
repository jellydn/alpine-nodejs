#/bin/sh

docker build \
  -t jellydn/alpine-nodejs:slim-14.19.3 \
  -t jellydn/alpine-nodejs:slim-14.19 \
  -t jellydn/alpine-nodejs:slim-14 \
  -f slim.dockerfile .
