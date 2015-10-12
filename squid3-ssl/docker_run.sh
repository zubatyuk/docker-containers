docker run --restart=always -d -h squid3.local --name squid3 -v /data/docker/cache/squid:/var/cache/squid3 zubatyuk/squid3-ssl
sleep 3
docker logs squid3 | sed -n '/BEGIN/,/END/p' > squid3.local.crt

