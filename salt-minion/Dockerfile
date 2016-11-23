FROM ubuntu:xenial

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -yqq update
RUN apt-get -y install wget
RUN wget -q -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/archive/2016.3.4/SALTSTACK-GPG-KEY.pub | apt-key add -
RUN echo 'deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/archive/2016.3.4 xenial main' > /etc/apt/sources.list.d/saltstack.list
RUN apt-get -yqq update
RUN apt-get -y install salt-minion

VOLUME ["/etc/salt"]

ENTRYPOINT ["salt-call"]
