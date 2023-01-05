dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
dnf install tar dnsmasq perl nmap-ncat bind-utils net-tools screen telnet vim screen htop wget rsyslog -y
dnf update -y
sed -i s/^SELINUX=.*$/SELINUX=disabled/ /etc/selinux/config
setenforce 0
systemctl disable --now firewalld
