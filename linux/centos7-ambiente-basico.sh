yum remove postfix
yum install epel-release -y
yum install tar dnsmasq perl nmap-ncat bind-utils net-tools screen telnet vim screen htop wget rsyslog -y
yum update -y
sed -i s/^SELINUX=.*$/SELINUX=disabled/ /etc/selinux/config
setenforce 0
