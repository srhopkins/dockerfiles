FROM ubuntu

RUN apt-get update && apt-get -y install wget ssh dnsmasq build-essential python-dev git vim && \
        echo 'user=root' > /etc/dnsmasq.conf && \
        echo 'addn-hosts=/etc/hosts.d' >> /etc/dnsmasq.conf && \
        mkdir /etc/hosts.d && \
        echo 'nohook resolv.conf' >> /etc/dhcpcd.conf

RUN wget https://raw.githubusercontent.com/srhopkins/dockerfiles/master/scripts/docker_tunnels.py -O /opt/docker_tunnels.py && \
	chmod +x /opt/docker_tunnels.py

RUN wget https://bootstrap.pypa.io/get-pip.py && \
	python get-pip.py && \
	rm -f get-pip.py
