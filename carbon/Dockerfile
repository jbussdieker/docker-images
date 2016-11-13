FROM ubuntu:xenial

RUN apt-get -yqq update
RUN apt-get -yqq install git
RUN apt-get -yqq install python
RUN apt-get -yqq install python-twisted

RUN git clone https://github.com/graphite-project/whisper.git /usr/local/src/whisper && cd /usr/local/src/whisper && git checkout 0.9.15
RUN cd /usr/local/src/whisper && python /usr/local/src/whisper/setup.py install

RUN git clone https://github.com/graphite-project/carbon.git /usr/local/src/carbon && cd /usr/local/src/carbon && git checkout 0.9.15
RUN cd /usr/local/src/carbon && python /usr/local/src/carbon/setup.py install

EXPOSE 2003
EXPOSE 2004
EXPOSE 7002

ENTRYPOINT ["/opt/graphite/bin/carbon-cache.py", "--nodaemon", "start"]
