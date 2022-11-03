#/bin/sh

for tag in 16.18.0 16.18 16 slim-16.18.0 slim-16.18 slim-16; do
  git tag -f $tag
  git push -f origin $tag
  docker push jellydn/alpine-nodejs:$tag
done

git push
