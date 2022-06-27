#/bin/sh

docker build \
  -t jellydn/alpine-nodejs:slim-16.15.1 \
  -t jellydn/alpine-nodejs:slim-16.15 \
  -t jellydn/alpine-nodejs:slim-16 \
  -f slim.dockerfile .
