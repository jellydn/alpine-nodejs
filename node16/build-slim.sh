#/bin/sh

docker build \
  -t jellydn/alpine-nodejs:slim-16.17.0 \
  -t jellydn/alpine-nodejs:slim-16.17 \
  -t jellydn/alpine-nodejs:slim-16 \
  -f slim.dockerfile .
