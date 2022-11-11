#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:16.18.1 \
  -t jellydn/alpine-nodejs:16.18 \
  -t jellydn/alpine-nodejs:16 \
  -f extract.dockerfile \
  .
