#/bin/sh

for tag in 20.1.0 20.1 20 slim-20.1.0 slim-20.1 slim-20; do
  git tag -f $tag
  git push -f origin $tag
  docker push jellydn/alpine-nodejs:$tag
done

git push
