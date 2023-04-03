#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:16.20.0 \
  -t jellydn/alpine-nodejs:16.20 \
  -t jellydn/alpine-nodejs:16 \
  -f tools.dockerfile .
