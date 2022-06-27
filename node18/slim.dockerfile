FROM jellydn/alpine-nodejs:18
FROM alpine:3.16

COPY --from=0 /usr/bin/node /usr/bin/

RUN apk upgrade --no-cache -U && \
  apk add --no-cache binutils libstdc++ && \
  strip /usr/bin/node && \
  apk del binutils
