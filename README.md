#Hacker Tools Dockerfile
This repository is meant to build the base image for a Hacker Tools container.

####Tools included in this image.

|      |  Tools  |
|:---------|:-----------------|
|0 | [Automated Wifi-Deauth script](https://github.com/veerendra2/wifi-deauth-attack) (Python Script in `/opt/`)
| 1   |[macof](http://manpages.ubuntu.com/manpages/xenial/man8/macof.8.html)|
|2| [yersinia](http://manpages.ubuntu.com/manpages/trusty/man8/yersinia.8.html)|
|3|[kismet](http://manpages.ubuntu.com/manpages/precise/man1/kismet.1.html)|
|4 |[namp](http://manpages.ubuntu.com/manpages/xenial/man1/nmap.1.html)|
|5 |[dsniff](http://manpages.ubuntu.com/manpages/precise/man8/arpspoof.8.html)|
|6 |[dnsmaq](http://manpages.ubuntu.com/manpages/trusty/man8/dnsmasq.8.html)|
|7 |[hostapd](http://manpages.ubuntu.com/manpages/trusty/man8/hostapd.8.html)|
|8 |[ettercap](http://manpages.ubuntu.com/manpages/trusty/man8/ettercap.8.html)|
|9 |[conntrack](http://manpages.ubuntu.com/manpages/trusty/man8/conntrack.8.html)|
|10 |[traceroute](http://manpages.ubuntu.com/manpages/trusty/man1/traceroute.db.1.html)|
|11 |[tcpdump](http://manpages.ubuntu.com/manpages/trusty/man8/tcpdump.8.html)|
|12 |[scapy](http://www.secdev.org/projects/scapy/doc/)|
|13 |[airmon-ng](https://www.aircrack-ng.org/documentation.html)  (with password dictionary `rockyou.txt` in `/opt/`)|
|14|[ping](http://manpages.ubuntu.com/manpages/trusty/man8/ping.8.html)|


####Pull the Image
######`docker pull veerendrav2/hacker-tools`

####Run the Container
######`docker run -it -d --net=host --privileged --name little-boy veerendrav2/hacker-tools`

###NOTE: 
#####Must run the container with `--net=host --privileged` option. Then only you can capture the packets and monitor the network on physical interface(Example: `wlan0`)
