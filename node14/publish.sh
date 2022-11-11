#/bin/sh

for tag in 14.21.1 14.21 14 slim-14.21.1 slim-14.21 slim-14; do
	git tag -f $tag
	git push -f origin $tag
	docker push jellydn/alpine-nodejs:$tag
done

git push
