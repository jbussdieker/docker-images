FROM ubuntu:xenial

RUN apt-get -yqq update
RUN apt-get -yqq install git
RUN apt-get -yqq install python
RUN apt-get -yqq install python-django
RUN apt-get -yqq install python-django-tagging
RUN apt-get -yqq install python-cairo

RUN git clone https://github.com/graphite-project/whisper.git /usr/local/src/whisper && cd /usr/local/src/whisper && git checkout 0.9.15
RUN cd /usr/local/src/whisper && python /usr/local/src/whisper/setup.py install

RUN git clone https://github.com/graphite-project/graphite-web.git /usr/local/src/graphite-web && cd /usr/local/src/graphite-web && git checkout 0.9.15
RUN cd /usr/local/src/graphite-web && python /usr/local/src/graphite-web/setup.py install

RUN cd /opt/graphite/webapp/graphite && python manage.py migrate

ENTRYPOINT ["/opt/graphite/bin/run-graphite-devel-server.py", "/opt/graphite"]
