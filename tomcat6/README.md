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

Sample `tunnel_name.json` : file(s) name must end in `.json`

    {
        "jump_gateway": "jump.mydomain.com",
        "user": "username",
        "tunnels": [
            "mongo001.mydomain.com:27017",
            "mongo002.mydomain.com:27017"
        ]
    }

The above `tunnel_name.json` Would auto-genrate this script

    #!/usr/bin/env bash
    # AUTO GENERATED from docker_tunnels.py (source: /tunnels/tunnel_name.json)
    
    ssh -M -S /tunnels/tunnel_name.socket -fnNT \
    	-L 127.0.0.2:27017:mongo001.mydomain.com:27017 \
    	-L 127.0.0.3:27017:mongo002.mydomain.com:27017 \
    	username@jump.mydomain.com

Sample `myname.hosts` : name of file(s) doesn't matter at all.

     127.0.0.7		testing.com
     74.125.224.33	bing.com

