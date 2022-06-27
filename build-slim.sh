#/bin/sh

docker build --squash \
  -t jellydn/alpine-nodejs:slim-12.22.12 \
  -t jellydn/alpine-nodejs:slim-12.22 \
  -t jellydn/alpine-nodejs:slim-12 \
  -f slim.dockerfile .
