
- Spin up the VM with ```vagrant up``` command.
- Run ```vagrant ssh-config``` for ssh details.

- Setup ssh keys for passwordless authentication
   - ssh-keygen
   - ssh-copy-id vagrant@127.0.0.1 -p 2222
   - On vagrant machine, disable PasswordAuthentication and restart ssh

- Run ansible ad-hoc command to test-connectivity
	- ```ansible testvm -m ping```
	- ```ansible testvm -a "uname -a"```
