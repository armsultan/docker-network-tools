# Docker Network Tools

Based off [`jonlabelle/docker-network-tools`](https://github.com/jonlabelle/docker-network-tools)

> A Docker image with various network tools pre-installed + HTTP tools for load testing and more

## Installed Tools

- [`curl`](https://curl.haxx.se) - Command line tool and library for transferring data with URLs.
- [`drill`](https://nlnetlabs.nl/projects/ldns/) - DNS(SEC) query tool ala dig.
- [`fping`](https://fping.org) - A grep-like utility that allows you to search for network packets on an interface.
- [`git`](https://www.git-scm.com/) - Distributed version control system.
- [`ipcalc`](http://jodies.de/ipcalc) - Network IP calculator.
- [`iperf`](https://sourceforge.net/projects/iperf2/) - A tool to measure IP bandwidth using UDP or TCP.
- [`jq`](https://stedolan.github.io/jq/) - A lightweight and flexible command line JSON processor.
- [`libidn`](https://www.gnu.org/software/libidn) - Encode/Decode library for internationalized domain names.
- ~~[`libressl`](https://www.libressl.org) - Version of the TLS/crypto stack forked from OpenSSL.~~
- [`macchanger`](https://github.com/alobbs/macchanger) - A utility for viewing/manipulating the MAC address of network interfaces.
- [`netcat`](https://packages.debian.org/sid/netcat-openbsd) - The TCP/IP swiss army knife (OpenBSD variant).
- [`ngrep`](https://github.com/jpr5/ngrep/) - A grep-like utility that allows you to search for network packets on an interface.
- [`nload`](http://www.roland-riegel.de/nload/) - Console network traffic and bandwidth monitor.
- [`nmap`](https://nmap.org/) - Network Security Scanner.
- [`oath-toolkit-oathtool`](https://www.nongnu.org/oath-toolkit/index.html) - A command line tool for generating and validating OTPs (One-Time Passwords).
- [`openssl`](https://www.openssl.org/) - Toolkit for Transport Layer Security (TLS).
- [`socat`](http://www.dest-unreach.org/socat/) - Multipurpose relay for binary protocols.
- [`ssh`](https://www.openssh.com/portable.html) - OpenBSD's SSH client.
- [`tcpdump`](https://www.tcpdump.org) - Dump and analyze traffic on a network.
- [`tshark`](https://www.wireshark.org/) - Network protocol analyzer (Console version).
- [`wget`](https://www.gnu.org/software/wget/wget.html) - A network utility to retrieve files from the web.
- [bind-tools](https://www.isc.org/dns-tools/) - The ISC DNS tools.
    - `arpaname` - Translate IP addresses to the corresponding ARPA names.
    - `delv` - DNS lookup and validation utility.
    - `dig` - DNS lookup utility.
    - `dnstap-read` - Print dnstap data in human-readable form.
    - `host` - DNS lookup utility.
    - `mdig` - DNS pipelined lookup utility.
    - `named-rrchecker` - Syntax checker for individual DNS resource records.
    - `nslookup` - Query Internet name servers interactively.
    - `nsupdate` - Dynamic DNS update utility.
    - `ddns-confgen` - DDNS key generation tool.
    - `named-checkzone` - Zone file validity checking or converting tool.
    - `named-compilezone` - Zone file validity checking or converting tool (similar to `named-checkzone`, but it always dumps the zone contents to a specified file in a specified format).
    - `named-journalprint` - Print zone journal in human-readable form.
    - `rndc-confgen` - RNDC key generation tool.
    - `tsig-keygen` - DDNS key generation tool.
- [findutils](https://www.gnu.org/software/findutils/) - GNU utilities for finding files.
    - `find` - Search for files in a directory hierarchy.
    - `locate` - List files in databases that match a pattern.
    - `updatedb` - Update a file name database.
    - `xargs` - Build and execute command lines from standard input.
- [iputils](https://github.com/iputils/iputils/) - IP Configuration Utilities (and Ping).
    - `arping` - Send ARP REQUEST to a neighbor host.
    - `clockdiff` - Measure clock difference between hosts.
    - `ninfod` - Respond to IPv6 Node Information Queries.
    - `ping` - Send IP4 ICMP ECHO_REQUEST to network hosts.
    - `ping6` - Send IP6 ICMP ECHO_REQUEST to network hosts.
    - `rarpd` - Reverse Address Resolution Protocol(RARP) daemon.
    - `rdisc` - Network router discovery daemon.
    - `tftpd` - IPv4 Trivial File Transfer Protocol client.
    - `tracepath` - Traces path to a IP4 network host discovering MTU along this path.
    - `tracepath6` - Traces path to a IP6 network host discovering MTU along this path.
    - `traceroute6` - Print the route packets trace to IP6 network host.
- [net-tools](https://sourceforge.net/projects/net-tools/) - Linux networking base tools.
    - `netstat` - Print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships.
    - `ypdomainname` - Show or set the system's NIS/YP domain name.
    - `dnsdomainname` - Show the system's DNS domain name.
    - `route` - Show / manipulate the IP routing table.
    - `nisdomainname` - Show or set system's NIS/YP domain name.
    - `domainname` - Show or set the system's NIS/YP domain name.
    - `hostname` - Show or set the system's host name.
    - `ifconfig` - Configure a network interface.
    - `arp` - Manipulate the system ARP cache.
    - `ipmaddr` - Adds, deletes, and displays multicast addresses.
    - `rarp` - Manipulate the system RARP table.
    - `slattach` - Attach a network interface to a serial line.
    - `nameif` - Name network interfaces based on MAC addresses.
    - `iptunnel` - Creates, deletes, and displays configured tunnels.
    - `plipconfig` - Fine tune PLIP device parameters.
- [procps](https://gitlab.com/procps-ng/procps) - Utilities for monitoring your system and processes on your system.
    - `free` - Report the amount of free and used memory in the system.
    - `kill` - Send a signal to a process based on PID.
    - `pgrep` - List processes based on name or other attributes.
    - `pkill` - Send a signal to a process based on name or other attributes.
    - `pmap` - Report memory map of a process.
    - `ps` - Report information of processes.
    - `pwdx` - Report current directory of a process.
    - `skill` - Obsolete version of pgrep/pkill.
    - `slabtop` - Display kernel slab cache information in real time.
    - `snice` - Renice a process.
    - `sysctl` - Read or Write kernel parameters at run-time.
    - `tload` - Graphical representation of system load average.
    - `top` - Dynamic real-time view of running processes.
    - `uptime` - Display how long the system has been running.
    - `vmstat` - Report virtual memory statistics.
    - `w` - Report logged in users and what they are doing.
    - `watch` - Execute a program periodically, showing output full-screen.

**Additional HTTP tools**
 - [wrk](https://github.com/wg/wrk) - modern HTTP benchmarking tool capable of generating significant load when run on a single multi-core CPU
 - [wrk2](https://github.com/giltene/wrk2) - wrk2 is wrk modifed to produce a constant throughput load, and accurate latency
 - [vegeta](https://github.com/tsenart/vegeta) - ersatile HTTP load testing tool built out of a need to drill HTTP services with a constant request rate
 - [fortio](https://github.com/fortio/fortio) - started as, and is, Istio's load testing tool and now graduated to be its own project
 - [testssl.sh](https://testssl.sh/) - tool which checks a server's service on any port for the support of TLS/SSL ciphers, protocols as well as recent cryptographic flaws and more.
 - [httpie](https://httpie.io/) - HTTP client for the API era

**Note:** `wrk` and `wrk2` not available on `linux/arm64`,`linux/arm/v7` builds. Coudlnt get that installed :(

## Usage

Run an interactive Bash session in the container from your terminal and start using the tools:

```bash
docker run --rm -it armsultan/network-tools
```

> **NOTE** `-rm` automatically removes the container upon exiting. See [[Docker run reference](https://docs.docker.com/engine/reference/run/) for more options.

**Optional:** If you would like to modify the Dockerfile then rebuild the Image, run:

```bash
# Build from Dockerfile:
docker build -t network-tools .
```

**Optional:** Setup Aliases to run commands from a the container.

For example, to run the HTTP tools using the alias instead of the `docker run` command:

```bash 
# HTTPIE
alias http='docker run --rm -it armsultan/network-tools http'
# WRK
alias wrk='docker run --rm -it armsultan/network-tools wrk'
# WRK2
alias wrk2='docker run --rm -it armsultan/network-tools wrk2'
# VEGETA
alias vegeta='docker run --rm -it armsultan/network-tools vegeta'
# FORTIO
alias fortio='docker run --rm -it armsultan/network-tools fortio'
# testssl.sh
alias testssl.sh='docker run --rm -ti armsultan/network-tools testssl.sh'
```

## Resources and other useful tools

- [jonlabelle/network-tools](https://hub.docker.com/r/jonlabelle/network-tools) on Docker Hub
- [Dockerfile](https://github.com/jonlabelle/docker-network-tools/blob/master/Dockerfile) on GitHub
- [jonlabelle/nmap](https://hub.docker.com/r/jonlabelle/nmap) - Minimal Docker image with Nmap Network Security Scanner pre-installed.
- [Docker run reference](https://docs.docker.com/engine/reference/run/)
