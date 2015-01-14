FROM centos:centos6
MAINTAINER srhopkins@gmail.com

RUN yum -y install wget tar telnet

COPY jdk-6u45-linux-x64-rpm.bin .
RUN /jdk-6u45-linux-x64-rpm.bin

RUN wget http://apache.mirrors.tds.net/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz && \
	mkdir -p /usr/local/apache-maven && \
	tar -xf apache-maven-3.2.5-bin.tar.gz -C /usr/local/apache-maven && \
	rm -f apache-maven-3.2.5-bin.tar.gz

COPY InstallCert/* /Cert/

COPY init.sh .


ENTRYPOINT ["/bin/bash", "/init.sh"]
