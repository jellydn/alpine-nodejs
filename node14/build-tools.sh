#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:14.19.3 \
  -t jellydn/alpine-nodejs:14.19 \
  -t jellydn/alpine-nodejs:14 \
  -f tools.dockerfile .
