#/bin/sh

for tag in 18.4.0 18.4 18 slim-18.4.0 slim-18.4 slim-18; do
  git tag -f $tag
  git push -f origin $tag
  docker push jellydn/alpine-nodejs:$tag
done

git push
