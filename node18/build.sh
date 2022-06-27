#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:18.4.0 \
  -t jellydn/alpine-nodejs:18.4 \
  -t jellydn/alpine-nodejs:18 \
  -f extract.dockerfile \
  .
