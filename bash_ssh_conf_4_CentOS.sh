#! /usr/bin/env bash
# Ansible-Node 에서 실행됨

now=$(date +"%m_%d_%Y")

# sshd_config 파일 backup
cp /etc/ssh/sshd_config /etc/ssh/sshd_config_$now.backup

# string편집기 sed를 이용하여 no를 yes로 변경함.
sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config

# sshd 데몬을 재시작한다.
systemctl restart sshd