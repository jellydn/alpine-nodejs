#/bin/sh

for tag in 18.16.0 18.16 18 slim-18.16.0 slim-18.16 slim-18; do
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
