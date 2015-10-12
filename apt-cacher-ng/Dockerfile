FROM ubuntu:trusty
MAINTAINER Roman Zubatyuk <zubatyuk@gmail.com>

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    apt-cacher-ng \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

EXPOSE 3142

CMD service cron start && /usr/sbin/apt-cacher-ng ForeGround=1 CacheDir=/var/cache/apt-cacher-ng
