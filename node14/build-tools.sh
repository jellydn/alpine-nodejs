#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:14.21.3 \
  -t jellydn/alpine-nodejs:14.21 \
  -t jellydn/alpine-nodejs:14 \
  -f tools.dockerfile .
