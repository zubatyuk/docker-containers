FROM ubuntu:trusty
MAINTAINER Roman Zubatyuk <zubatyuk@gmail.com>

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
       dnsmasq dnsutils

RUN    echo "addn-hosts=/etc/althosts" > /etc/dnsmasq.conf \
    && echo "user=root" >> /etc/dnsmasq.conf \
    && echo "conf-dir=/etc/dnsmasq.d" >> /etc/dnsmasq.conf \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

CMD /usr/sbin/dnsmasq -d 
