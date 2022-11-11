#/bin/sh

docker build \
  -t jellydn/alpine-nodejs:slim-16.18.1 \
  -t jellydn/alpine-nodejs:slim-16.18 \
  -t jellydn/alpine-nodejs:slim-16 \
  -f slim.dockerfile .
