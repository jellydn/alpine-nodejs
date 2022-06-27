FROM jellydn/alpine-nodejs:16
FROM alpine:3.13

COPY --from=0 /usr/bin/node /usr/bin/

RUN apk upgrade --no-cache -U && \
  apk add --no-cache binutils libstdc++ && \
  strip /usr/bin/node && \
  apk del binutils
