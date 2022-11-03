#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:18.12.0 \
  -t jellydn/alpine-nodejs:18.12 \
  -t jellydn/alpine-nodejs:18 \
  -f extract.dockerfile \
  .
