tomcat7
===
tag: base
---
 - tomcat v7.0.57
 - jdk 7u72

tag: auto
---
 - start-tomcat.sh
 - docker-tunnels.py

---
Simplest incantation

     docker run -it -p 8080:8080 srhopkins/tomcat7:auto

Full bells

     docker run -it -p 8080:8080 \
	     -v `pwd`/deployment:/deployment \
	     -v `pwd`/hosts:/hosts \
	     -v `pwd`/tunnels:/tunnels \
	     srhopkins/tomcat7:auto

Sample `/tunnels/tunnel_name.json` : file(s) name must end in `.json`

    {
        "jump_gateway": "jump.mydomain.com",
        "user": "username",
        "tunnels": [
            "mongo001.mydomain.com:27017",
            "mongo002.mydomain.com:27017"
        ]
    }

Sample `myname.hosts` : name of file(s) doesn't matter at all.

     127.0.0.7		testing.com
     74.125.224.33	bing.com

