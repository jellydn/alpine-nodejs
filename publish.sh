#/bin/sh

for tag in 12.22.12 12.22 12 slim-12.22.12 slim-12.22 slim-12; do
  git tag -f $tag
  git push -f origin $tag
  docker push jellydn/alpine-nodejs:$tag
done

git push
