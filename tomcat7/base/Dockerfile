FROM centos:centos6
MAINTAINER srhopkins@gmail.com

#RUN yum -y upgrade # update
RUN yum -y install openssh-clients dnsmasq && \
	echo 'user=root' > /etc/dnsmasq.conf && \
	echo 'addn-hosts=/etc/hosts.d' >> /etc/dnsmasq.conf && \
	mkdir /etc/hosts.d && \
	echo 'nohook resolv.conf' >> /etc/dhcpcd.conf

# Install jdk and tomcat
RUN yum -y install wget tar && \
	wget --no-cookies \
	--no-check-certificate \
	--header "Cookie: oraclelicense=accept-securebackup-cookie" \
	"http://download.oracle.com/otn-pub/java/jdk/7u72-b14/jdk-7u72-linux-x64.rpm" \
	-O jdk.rpm \
	-q && \
	rpm -Uvh jdk.rpm && \
	rm -f jdk.rpm && \
	wget http://www.eng.lsu.edu/mirrors/apache/tomcat/tomcat-7/v7.0.57/bin/apache-tomcat-7.0.57.tar.gz \
	--no-check-certificate \
	-O apache-tomcat.tar.gz \
	-q && \
	tar -vxzf apache-tomcat.tar.gz -C /usr/share && \
	rm -f apache-tomcat.tar.gz && \
	yum -y remove wget tar
