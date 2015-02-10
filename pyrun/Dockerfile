FROM debian:wheezy

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y install curl wget sqlite3

ENV DEBIAN_FRONTEND dialog

RUN mkdir /opt/python
WORKDIR /opt/python
RUN wget --no-check-certificate  https://downloads.egenix.com/python/install-pyrun
RUN chmod +x install-pyrun 
ENV PLATFORM linux-x86_64
RUN ./install-pyrun --log --platform=linux-x86_64 --disable-certificate-checks ./

ENV PATH /opt/python/bin:$PATH


CMD /bin/bash
