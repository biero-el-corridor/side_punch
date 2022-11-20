#### website that help for AD / windows audit
- [OCD mindmap for AD audit (scroll down) ](https://orange-cyberdefense.github.io/ocd-mindmaps/img/pentest_ad_dark_2022_11.svg)
- [WADComs is an interactive cheat sheet, containing a curated list of offensive security tools and their respective commands, to be used against Windows/AD environments.](https://wadcoms.github.io/)
#### Exemple of standardised windows port
- 139 (smb)
- 139 (RPC)
- 443 (smb)
- 445 (smb)
- 389 (LDAP)
	-  Reco
		- nmap -n -sV --script "ldap* and not brute" -p "IP" # liste les informations en lien avec le LDAP
	- Connexions
		- ldapsearch -x -H LDAP://IP -D 'LDAP-SERVER-NAME\ldap' -w 'PASSWORD' -b "CN=NMAP-LDAP-RESULT,DC=NMAP-LDAP-RESULT"