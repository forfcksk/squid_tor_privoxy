# squid_tor_privoxy
Docker container with squid3, privoxy and tor. 
# build
docker build -t squid-tor-privoxy .
# run
docker run --name squid-tor-privoxy -p 64256:3128 -d squid-tor-privoxy:1
# add user
docker exec -it squid-tor-privoxy htpasswd -c /etc/squid/passwords \n
docker restart squid-tor-privoxy
