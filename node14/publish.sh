#/bin/sh

for tag in 14.20.0 14.20 14 slim-14.20.0 slim-14.20 slim-14; do
  git tag -f $tag
  git push -f origin $tag
  docker push jellydn/alpine-nodejs:$tag
done

git push
