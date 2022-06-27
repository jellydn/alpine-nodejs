#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:16.15.1 \
  -t jellydn/alpine-nodejs:16.15 \
  -t jellydn/alpine-nodejs:16 \
  -f extract.dockerfile \
  .
