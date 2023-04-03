#/bin/sh

for tag in 16.20.0 16.20 16 slim-16.20.0 slim-16.20 slim-16; do
  git tag -f $tag
  git push -f origin $tag
  docker push jellydn/alpine-nodejs:$tag
done

git push
