### Reco
> 1) nmap -n -sV --script "ldap* and not brute" -p "IP" # liste les informations en lien avec le LDAP


## Connexions
> 2) ldapsearch -x -H LDAP://IP -D 'LDAP-SERVER-NAME\ldap' -w 'PASSWORD' -b "CN=NMAP-LDAP-RESULT,DC=NMAP-LDAP-RESULT"