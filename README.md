> ⚠️ This is a fork of [mhart/alpine-node](https://github.com/mhart/alpine-node), which is not active in development.

## Minimal Node.js Docker Images

Versions v20.1.0, v18.16.0, v16.20.0, v14.21.3
built on [Alpine Linux](https://alpinelinux.org/).

All versions use the one [jellydn/alpine-nodejs](https://hub.docker.com/r/jellydn/alpine-nodejs/) repository,
but each version aligns with the following tags (ie, `jellydn/alpine-nodejs:<tag>`). The sizes are for the
_unpacked_ images as reported by Docker – compressed sizes are about 1/3 of these:

- Full install built with npm and yarn:
  - `20`, `20.1`, `20.1.0` – 63.51 MB (npm 9, yarn 1.22.10)
  - `latest`, `18`, `18.16`, `18.16.0` – 62.02 MB (npm 8, yarn 1.22.10)
  - `16`, `16.20`, `16.20.0` – 55.89 MB (npm 7, yarn 1.22.10)
  - `14`, `14.21`, `14.21.3` – 59.32 MB (npm 6, yarn 1.22.10)
- Slim install with no npm or yarn:

  - `slim-20`, `slim-20.1`, `slim-20.1.0` – 70.62 MB
  - `slim`, `slim-18`, `slim-18.16`, `slim-18.16.0` – 65.49 MB
  - `slim-16`, `slim-16.20`, `slim-16.20.0` – 63.04 MB
  - `slim-14`, `slim-14.21`, `slim-14.21.3` – 58.21 MB

## Examples

```console
$docker run --rm jellydn/alpine-nodejs:20 node --version
v20.1.0

$ docker run --rm jellydn/alpine-nodejs node --version
v18.16.0

$ docker run --rm jellydn/alpine-nodejs:14 node --version
v14.21.3

$ docker run --rm jellydn/alpine-nodejs:slim-16 node --version
v16.20.0

```

## Example Dockerfile for your own Node.js project

If you're doing your `npm install`/`npm ci` or `yarn install` from your
`Dockerfile`, then you'll probably want to add `node_modules` to your
`.dockerignore` file first, so that it doesn't get sent to the docker daemon.

For the smallest builds, use a multi-stage build – where you install your
modules using the full install image, but then create your app using the slim
image – this can reduce the size of your final image by ~35MB or so.

```Dockerfile
# This stage installs our modules
FROM jellydn/alpine-nodejs:14
WORKDIR /app
COPY package.json package-lock.json ./

# If you have native dependencies, you'll need extra tools
# RUN apk add --no-cache make gcc g++ python3

RUN npm ci --prod

# Then we copy over the modules from above onto a `slim` image
FROM jellydn/alpine-nodejs:slim-14

# If possible, run your container using `docker run --init`
# Otherwise, you can use `tini`:
# RUN apk add --no-cache tini
# ENTRYPOINT ["/sbin/tini", "--"]

WORKDIR /app
COPY --from=0 /app .
COPY . .
CMD ["node", "index.js"]
```

If you can't do multi-stage builds, then you can just do everything on a "full
install" image:

```Dockerfile
FROM jellydn/alpine-nodejs:14

# If possible, run your container using `docker run --init`
# Otherwise, you can use `tini`:
# RUN apk add --no-cache tini
# ENTRYPOINT ["/sbin/tini", "--"]

WORKDIR /app
COPY . .

# If you have native dependencies, you'll need extra tools
# RUN apk add --no-cache make gcc g++ python3

RUN npm ci --prod

CMD ["node", "index.js"]
```

## How to build and publish images to Docker Hub

```sh
cd node14 # or node16/node18/node20
sh build.sh
sh build-slim.sh
sh publish.sh
sh build-tools.sh
sh publish.sh
```

## Caveats

As Alpine Linux uses musl, you may run into some issues with environments
expecting glibc-like behavior – especially if you try to use binaries compiled
with glibc. You should recompile these binaries to use musl (compiling on
Alpine is probably the easiest way to do this).

If you get an error similar to `error loading shared library ld-linux-x86-64.so.2`, it may be that you have dependencies relying on libc –
you can try to fix this by adding `RUN apk add --no-cache libc6-compat` or
`RUN ln -s /lib/libc.musl-x86_64.so.1 /lib/ld-linux-x86-64.so.2` to your
`Dockerfile`.

Inspired by:

- https://github.com/alpinelinux/aports/blob/454db196/main/nodejs/APKBUILD
- https://github.com/alpinelinux/aports/blob/454db196/main/libuv/APKBUILD
- https://hub.docker.com/r/ficusio/nodejs-base/~/dockerfile/
