#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:16.18.0 \
  -t jellydn/alpine-nodejs:16.18 \
  -t jellydn/alpine-nodejs:16 \
  -f tools.dockerfile .
