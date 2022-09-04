#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:18.8.0 \
  -t jellydn/alpine-nodejs:18.8 \
  -t jellydn/alpine-nodejs:18 \
  -f tools.dockerfile .
