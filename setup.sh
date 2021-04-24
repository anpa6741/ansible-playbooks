#!/bin/bash

if [ "$#" -eq 2 ]; then
  hostname=$1
  port=$2
else
  echo "Usage: ./setup.sh <hostname> <port>"
  exit 1
fi

rm -f ~/.ssh/known_hosts
vagrant ssh $hostname -c "sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config"
vagrant ssh $hostname -c "sudo systemctl restart sshd"
ssh-copy-id vagrant@127.0.0.1 -p $port
vagrant ssh $hostname -c "sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config"
vagrant ssh $hostname -c "sudo systemctl restart sshd"
vagrant ssh $hostname -c "sudo apt update"
