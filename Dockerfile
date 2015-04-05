FROM gliderlabs/alpine:3.1
MAINTAINER Brad Feehan "git@bradfeehan.com"

RUN apk add --update dnsmasq
EXPOSE 53

ENTRYPOINT ["/usr/sbin/dnsmasq", "-d"]
