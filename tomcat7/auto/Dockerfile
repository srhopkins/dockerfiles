FROM srhopkins/tomcat7:base
MAINTAINER srhopkins@gmail.com

EXPOSE 8080

COPY docker_tunnels.py /opt/docker_tunnels.py
COPY start-tomcat.sh /opt/start-tomcat.sh
RUN chmod +x /opt/docker_tunnels.py
RUN chmod +x /opt/start-tomcat.sh

ENTRYPOINT ["/opt/start-tomcat.sh"]
