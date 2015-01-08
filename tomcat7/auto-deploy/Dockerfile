FROM srhopkins/tomcat7:base
MAINTAINER srhopkin@apollo.edu

EXPOSE 8080

ADD start-tomcat.sh /opt/start-tomcat.sh
RUN chmod +x /opt/start-tomcat.sh

ENTRYPOINT ["/opt/start-tomcat.sh"]
