# dhcpd
DHCP allows hosts on a TCP/IP network to request and be assigned IP addresses, and also to discover information about the network to which they are attached.
DHCP uses UDP as its transport protocol. DHCP messages that a client sends to a server are sent to well-known port 67.

## Usage

```
docker run -d --name dhcpd --hostname dhcpd -p 67:67/udp -v $(pwd)/dhcpd.conf:/etc/dhcp/dhcpd.conf --restart always hashimi/dhcpd:1.0
```
