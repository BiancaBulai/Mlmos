#!/bin/bash
yum install openssh openssh-server openssh-clients openssl-libs
yum install git
#yum update
#sed -re 's/^(PasswordAuthentification)([[:space:]]+)yes/\1\2no/' -i.'date -l' /etc/ssh/sshd_config
rm -rf /root/bbita
rm -rf /root/bbita.pub
ssh-keygen -b 2048 -t rsa -f /root/bbita -q -N '' &> /var/log/system-bootstrap.log
cat /root/bbita > /root/.ssh/id_rsa
cat /root/bbita.pub > /root/.ssh/id_rsa.pub
#sed -re 's/^(SELINUX)(=)enforcing/\1\2disabled/' -i.'date -l' /etc/selinux/config
setenforce 0
