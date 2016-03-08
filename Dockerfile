FROM debian:stretch
MAINTAINER Alex Paulson <whileforkdofork@gmail.com>

RUN apt-get update && \
    apt-get install -y build-essential git curl wget python

RUN git clone https://github.com/munificent/wren wren

RUN cd wren && make

RUN cd wren && mv wren /usr/local/bin/wren

ENTRYPOINT ["wren"]
