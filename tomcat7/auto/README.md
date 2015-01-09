tomcat7
===========
tag: base
------------
 - tomcat v7.0.57
 - jdk 7u72

tag: auto
------------
 - start-tomcat.sh
 - docker-tunnels.py

Simplest incantation
> docker run -it -p 8080:8080 -d srhopkins/tomcat7:auto  
