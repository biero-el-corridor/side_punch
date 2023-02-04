## Ressource 
- [linPEAS](https://github.com/carlospolop/PEASS-ng/tree/master/linPEAS)
- [default password database](https://cirt.net/passwords)
## Linux 
- Shell upgrade
	- if python is install ```python -c 'import pty; pty.spawn("/bin/bash")' ```
	 - if you are in a bad reverse shell  ```SHELL=/bin/bash script -q /dev/null```
	 - [pentest monkey article](https://pentestmonkey.net/blog/post-exploitation-without-a-tty)

- Script 
	- [LinPeas](https://gtfobins.github.io/)

-  SETUID / SUDOERS
	- setuid command (go to [gtfobin](https://gtfobins.github.io/) if ok)
		- find / -xdev -perm -4000 2>/dev/null
	- sudoers command (go to [gtfobin](https://gtfobins.github.io/) if ok)
		- sudo -l 
- Credential Harvesting
	- [cool article that list  creds harvest on linux](https://steflan-security.com/linux-privilege-escalation-credentials-harvesting/)

## Windows
- read powershell history 
	-  (Get-PSReadlineOption).HistorySavePath
	- cat "result of the previous command"
- [winPEAS](https://github.com/carlospolop/PEASS-ng/tree/master/winPEAS)
- Credential harvesting 
	- [LaZagne](https://github.com/AlessandroZ/LaZagne)
	- [mimikatz](https://github.com/ParrotSec/mimikatz)
	- try to [procdump](https://learn.microsoft.com/en-us/sysinternals/downloads/procdump) the following 
		- procdump -ma ProcessName (Not PID)