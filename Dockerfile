FROM jrei/systemd-ubuntu:20.04

RUN apt update

RUN apt install -y net-tools
RUN apt install -y tcpdump
RUN apt install -y iputils-ping

RUN apt install -y vim

RUN apt install -y nginx
RUN apt install -y ipvsadm


RUN apt install -y bridge-utils dmidecode iptables iproute2 libc6 libffi7 libgcc-s1 liblz4-1 liblzo2-2 libmariadb3  \
    libpcap0.8 libssl1.1 libstdc++6 libsasl2-2 libsqlite3-0 net-tools python3-pkg-resources python3-migrate  \
    python3-sqlalchemy python3-mysqldb python3-ldap3 sqlite3 zlib1g

COPY openvpn-as-bundled-clients-25.deb .
COPY openvpn-as_2.10.3-c47a813c-Ubuntu20_amd64.deb .
#RUN dpkg -i openvpn-as-bundled-clients-25.deb openvpn-as_2.10.3-c47a813c-Ubuntu20_amd64.deb
#RUN /usr/local/openvpn_as/scripts/sacli --key "vpn.general.osi_layer" --value "2" ConfigPut
#RUN /usr/local/openvpn_as/scripts/sacli start

#RUN /usr/local/openvpn_as/scripts/sacli --key "vpn.general.osi_layer" ConfigDel
#RUN /usr/local/openvpn_as/scripts/sacli start