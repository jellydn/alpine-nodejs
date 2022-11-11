#/bin/sh

docker build --pull \
  -t jellydn/alpine-nodejs:18.12.1 \
  -t jellydn/alpine-nodejs:18.12 \
  -t jellydn/alpine-nodejs:18 \
  -f tools.dockerfile .
