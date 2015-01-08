FROM srhopkins/tomcat7:base
MAINTAINER srhopkins@gmail.com

EXPOSE 8080

ADD start-tomcat.sh /opt/start-tomcat.sh
RUN chmod +x /opt/start-tomcat.sh

ENTRYPOINT ["/opt/start-tomcat.sh"]
