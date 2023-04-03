#/bin/sh

docker build \
  -t jellydn/alpine-nodejs:slim-18.15.0 \
  -t jellydn/alpine-nodejs:slim-18.15 \
  -t jellydn/alpine-nodejs:slim-18 \
  -f slim.dockerfile .
