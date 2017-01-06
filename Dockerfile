FROM ubuntu:latest
MAINTAINER Veerendra.Kakumanu
RUN apt-get update -y
RUN apt-get install -y vim python-dev net-tools conntrack traceroute inetutils-ping libcap* tcpdump python python-pip zlib1g zlib1g-dev build-essential wget xz-utils libcap* sudo debconf-utils kmod
RUN pip install scapy
RUN pip install --upgrade pip
RUN echo "kismet kismet/install-setuid select true" | sudo debconf-set-selections
RUN echo "kismet kismet/install-users string root" | sudo debconf-set-selections
RUN apt-get install -y ettercap-text-only kismet aircrack-ng nmap yersinia dsniff dnsmasq hostapd macchanger
ADD http://scrapmaker.com/data/wordlists/dictionaries/rockyou.txt /opt/rockyou.txt
CMD ["/bin/bash"]
