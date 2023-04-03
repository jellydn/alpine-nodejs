#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:18.15.0 \
  -t jellydn/alpine-nodejs:18.15 \
  -t jellydn/alpine-nodejs:18 \
  -f tools.dockerfile .
