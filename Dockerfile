FROM ubuntu:latest
MAINTAINER Veerendra.Kakumanu
RUN apt-get update -y && \
    apt-get install -y vim python-dev net-tools conntrack traceroute inetutils-ping libcap* tcpdump python python-pip zlib1g zlib1g-dev build-essential wget xz-utils libcap* sudo debconf-utils kmod && \
    pip install scapy && \
    pip install --upgrade pip && \
    echo "kismet kismet/install-setuid select true" | sudo debconf-set-selections && \
    echo "kismet kismet/install-users string root" | sudo debconf-set-selections && \
    apt-get install -y ettercap-text-only kismet aircrack-ng nmap yersinia dsniff dnsmasq hostapd
ADD https://raw.githubusercontent.com/veerendra2/wifi-deauth-attack/master/deauth.py /opt/deauth.py
ADD http://scrapmaker.com/data/wordlists/dictionaries/rockyou.txt /opt/rockyou.txt
CMD ["/bin/bash"]
