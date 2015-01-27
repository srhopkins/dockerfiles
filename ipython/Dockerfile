FROM ubuntu

RUN apt-get update && apt-get -y install wget ssh dnsmasq && \
        echo 'user=root' > /etc/dnsmasq.conf && \
        echo 'addn-hosts=/etc/hosts.d' >> /etc/dnsmasq.conf && \
        mkdir /etc/hosts.d && \
        echo 'nohook resolv.conf' >> /etc/dhcpcd.conf

RUN apt-get -y install build-essential python-dev git

RUN wget https://raw.githubusercontent.com/srhopkins/dockerfiles/master/scripts/docker_tunnels.py -O /opt/docker_tunnels.py && \
	chmod +x /opt/docker_tunnels.py

RUN wget https://bootstrap.pypa.io/get-pip.py && \
	python get-pip.py && \
	pip install ipython[notebook]

RUN mkdir /notebooks

#WORKDIR /notebooks

#ENTRYPOINT ["ipython", "notebook", "--ip=0.0.0.0", "--no-browser"]
