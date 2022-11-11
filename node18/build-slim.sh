#/bin/sh

docker build \
  -t jellydn/alpine-nodejs:slim-18.12.1 \
  -t jellydn/alpine-nodejs:slim-18.12 \
  -t jellydn/alpine-nodejs:slim-18 \
  -f slim.dockerfile .
