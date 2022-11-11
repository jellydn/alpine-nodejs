#/bin/sh

for tag in 18.12.1 18.12 18 slim-18.12.1 slim-18.12 slim-18; do
  git tag -f $tag
  git push -f origin $tag
  docker push jellydn/alpine-nodejs:$tag
done

# Push the latest
git tag -f latest
git push -f origin latest
docker tag jellydn/alpine-nodejs:18 jellydn/alpine-nodejs:latest
docker push jellydn/alpine-nodejs:latest

git push
