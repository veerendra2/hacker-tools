FROM ubuntu:latest
MAINTAINER Veerendra.Kakumanu
RUN apt-get update -y
RUN apt-get install -y vim net-tools conntrack traceroute inetutils-ping libcap* tcpdump python python-pip zlib1g zlib1g-dev build-essential wget xz-utils libcap* sudo debconf-utils
RUN echo "kismet kismet/install-setuid select true" | sudo debconf-set-selections
RUN echo "kismet kismet/install-users string root" | sudo debconf-set-selections
RUN apt-get install -y ettercap-text-only kismet aircrack-ng nmap
ADD rockyou.txt /opt/rockyou.txt
CMD ["/bin/bash"]

