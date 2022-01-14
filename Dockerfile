FROM alpine:latest
MAINTAINER Sayyed Ali Agha Hashimi <ali.omid730@gmail.com>
RUN apk add --no-cache dhcp && touch /var/lib/dhcp/dhcpd.leases
EXPOSE 67/udp
VOLUME ["/etc/dhcp"]
ENTRYPOINT ["/usr/sbin/dhcpd", "-4", "-f", "-d", "--no-pid", "-cf", "/etc/dhcp/dhcpd.conf"]
