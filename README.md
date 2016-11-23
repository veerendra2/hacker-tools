#Wifi Sniffing Tools Dockerfile
This repository is meant to build the base image for a sniffing tools container.

####Tools included in this image.

1.  airmon-ng (with password dictionary`rockyou.txt` in `/opt/`)
2.  ettercap
3.  Kismet
4.  conntrack
5.  tcpdump

####Pull the Image
######`docker pull veerendrav2/wifi_sniffer`

####Run the Container
######`docker run -it -d --net=host --privileged --name wifi-hack-tools veerendrav2/wifi_sniffer`

###NOTE: 
#####Must run the container with `--net=host --privileged` option. Then only you can capture the packages and monitor the network on physical interface(Example: `wlan0`)
