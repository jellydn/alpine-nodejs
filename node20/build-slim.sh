#/bin/sh

docker build \
  -t jellydn/alpine-nodejs:slim-20.1.0 \
  -t jellydn/alpine-nodejs:slim-20.1 \
  -t jellydn/alpine-nodejs:slim-20 \
  -f slim.dockerfile .
