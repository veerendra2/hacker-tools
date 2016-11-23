#Wifi Hacking Tools Dockerfile
This repository is meant to build the base image for a hacking tools container.

####Tools includede in this image.

1.  airmon-ng
2.  ettercap
3.  Kismet
4.  conntrack
5.  tcpdump

####Pull the Image
######`docker pull veerendrav2/wifihack_tools`

####Run the Container
######`docker run -it -d --net=host --privileged --name wifi-hack-tools veerendrav2/wifihack_tools`

###NOTE: 
#####Must run the container with `--net=host --privileged` option. Then only you can capture the packages and monitor the network on physical interface(Example: `wlan0`)
