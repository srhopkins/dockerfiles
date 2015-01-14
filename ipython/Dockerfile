FROM ubuntu

RUN apt-get update && apt-get -y install ssh dnsmasq && \
        echo 'user=root' > /etc/dnsmasq.conf && \
        echo 'addn-hosts=/etc/hosts.d' >> /etc/dnsmasq.conf && \
        mkdir /etc/hosts.d && \
        echo 'nohook resolv.conf' >> /etc/dhcpcd.conf

