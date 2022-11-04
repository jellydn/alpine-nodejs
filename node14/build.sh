#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:14.21.0 \
  -t jellydn/alpine-nodejs:14.21 \
  -t jellydn/alpine-nodejs:14 \
  -f extract.dockerfile \
  .
