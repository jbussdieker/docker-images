FROM ubuntu:xenial

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -yqq update
RUN apt-get -yqq install slapd

VOLUME ["/var/lib/ldap"]

ENTRYPOINT ["slapd", "-d", "1"]
