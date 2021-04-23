#!/bin/bash

vagrant ssh -c "sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config"
vagrant ssh -c "sudo systemctl restart sshd"
ssh-copy-id vagrant@127.0.0.1 -p 2222
vagrant ssh -c "sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config"
vagrant ssh -c "sudo systemctl restart sshd"
vagrant ssh -c "sudo apt update"
