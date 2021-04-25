
Requirements:

 - Vagrant version: 2.2.15
 - VirtualBox version: 6.1.19
 - Vagrant box: Ubuntu 16.04

- Spin up the VM with ```vagrant up``` command.
- Run ```vagrant ssh-config``` for ssh details.

- Run setup script: ```./setup.sh <hostname1> <hostname2>```

- Command to ssh into the vm
    - ```ssh vagrant@127.0.0.1 -p <port>```

- Run ansible ad-hoc command to test-connectivity
   - ```ansible testvm -m ping```
   - ```ansible testvm -a "uname -a"```

- Run playbooks: ```ansible-playbook main.yml```

- To run playbook on a different host, run the following command:
   - ```ansible-playbook [playbook_name] --extra-vars "variable_host=node2"```

- Troubleshooting common playbook failures
  - run ```sudo apt update``` on the node where playbook execution failed.
