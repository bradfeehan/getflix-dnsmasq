TAG := bradfeehan/getflix-dnsmasq:latest

default: push

image:
	docker build --tag="$(TAG)" .

push: image
	docker push "$(TAG)"

.PHONY: image push
