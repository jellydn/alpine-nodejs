#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:14.20.0 \
  -t jellydn/alpine-nodejs:14.20 \
  -t jellydn/alpine-nodejs:14 \
  -f extract.dockerfile \
  .
