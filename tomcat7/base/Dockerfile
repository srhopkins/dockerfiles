FROM centos:centos6
MAINTAINER srhopkins@gmail.com

EXPOSE 8080

RUN yum -y upgrade # update
RUN yum -y install wget tar openssh-clients

# Install jdk
RUN wget --no-cookies \
	--no-check-certificate \
	--header "Cookie: oraclelicense=accept-securebackup-cookie" \
	"http://download.oracle.com/otn-pub/java/jdk/7u72-b14/jdk-7u72-linux-x64.rpm" \
	-O jdk.rpm \
	-q
RUN rpm -Uvh jdk.rpm
RUN rm -f jdk.rpm

# Install tomcat
RUN wget http://www.eng.lsu.edu/mirrors/apache/tomcat/tomcat-7/v7.0.57/bin/apache-tomcat-7.0.57.tar.gz \
	--no-check-certificate \
	-O apache-tomcat.tar.gz \
	-q
RUN tar -vxzf apache-tomcat.tar.gz -C /usr/share
RUN rm -f apache-tomcat.tar.gz
