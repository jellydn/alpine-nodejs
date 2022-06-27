#/bin/sh

for tag in 16.15.1 16.15 16 slim-16.15.1 slim-16.15 slim-16; do
  git tag -f $tag
  git push -f origin $tag
  docker push jellydn/alpine-nodejs:$tag
done

git push
