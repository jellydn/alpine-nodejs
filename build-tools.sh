#/bin/sh

docker build --pull --squash \
  -t jellydn/alpine-nodejs:12.22.12 \
  -t jellydn/alpine-nodejs:12.22 \
  -t jellydn/alpine-nodejs:12 \
  -f tools.dockerfile .
