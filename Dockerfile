FROM debian:stretch
MAINTAINER FORFCKSK

RUN apt-get update && \
    apt-get -y install tor apache2-utils privoxy squid3 nano screen  && \
    apt-get clean

COPY squid.conf /etc/squid/squid.conf
COPY config /etc/privoxy/config
COPY torrc /etc/tor/torrc
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
