FROM gliderlabs/alpine:3.1
MAINTAINER Brad Feehan "git@bradfeehan.com"

RUN apk add --update dnsmasq
ADD config/dnsmasq.conf /etc/dnsmasq.conf
ADD config/resolv.dnsmasq.conf /etc/resolv.dnsmasq.conf

EXPOSE 53

ENTRYPOINT ["/usr/sbin/dnsmasq", "-d"]
