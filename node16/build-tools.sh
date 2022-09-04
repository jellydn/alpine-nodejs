#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:16.17.0 \
  -t jellydn/alpine-nodejs:16.17 \
  -t jellydn/alpine-nodejs:16 \
  -f tools.dockerfile .
