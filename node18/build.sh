#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:18.16.0 \
  -t jellydn/alpine-nodejs:18.16 \
  -t jellydn/alpine-nodejs:18 \
  -f extract.dockerfile \
  .
