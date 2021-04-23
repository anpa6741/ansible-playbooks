
Requirements:

 - Vagrant version: 2.2.15
 - VirtualBox version: 6.1.19
 - Vagrant box: Ubuntu 16.04

- Spin up the VM with ```vagrant up``` command.
- Run ```vagrant ssh-config``` for ssh details.

- Setup ssh keys for passwordless authentication
   - ssh-keygen
   - ssh-copy-id vagrant@127.0.0.1 -p 2222
   - On vagrant machine, disable PasswordAuthentication, PermitRootLogin and restart ssh

- Run ansible ad-hoc command to test-connectivity
   - ```ansible testvm -m ping```
   - ```ansible testvm -a "uname -a"```
