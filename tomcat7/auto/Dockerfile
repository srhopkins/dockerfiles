FROM srhopkins/tomcat7:base
MAINTAINER srhopkins@gmail.com

EXPOSE 8080

COPY tomcat-users.xml /usr/share/apache-tomcat-7.0.57/conf/tomcat-users.xml
COPY docker_tunnels.py /opt/docker_tunnels.py
COPY start-tomcat.sh /opt/start-tomcat.sh
RUN chmod 600 /usr/share/apache-tomcat-7.0.57/conf/tomcat-users.xml
RUN chmod +x /opt/docker_tunnels.py
RUN chmod +x /opt/start-tomcat.sh

ENTRYPOINT ["/opt/start-tomcat.sh"]
