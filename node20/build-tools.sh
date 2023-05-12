#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:20.1.0 \
  -t jellydn/alpine-nodejs:20.1 \
  -t jellydn/alpine-nodejs:20 \
  -f tools.dockerfile .
