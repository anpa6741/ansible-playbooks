
- Spin up the VM with ```vagrant up``` command.
- Run ```vagrant ssh-config``` for ssh details.
- Run ansible ad-hoc command to test-connectivity
	- ```ansible testvm -i inventory -m ping```
    - ```ansible testvm -i inventory -a "uname -a"```
