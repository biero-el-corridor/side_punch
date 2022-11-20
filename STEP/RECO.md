# RECO 

#### Externe
1) [Shodan](https://www.shodan.io/dashboard)
	1) give informations about exposed 
	2) use the same stuff a exposed in the internal scan
2) [DNSdumpster](https://dnsdumpster.com/)
	1) search for info in zone transfert
3) [Sudomy](https://github.com/screetsec/Sudomy)
	1) search for subdomain or other info for discover shadow it

### Interne
#### Naabu 
##### Marin

> 1)  nmap –sn $target –T5 –vv  -oG grepable.txt


> 2) cat grepable.txt | grep Up | cut –d " " -f2 >> up_hosts.txt


> 3)  For i in $(cat up_hosts.txt); do sudo naabu –host $i  -nmap-cli ' nmap -sV'; done | tee service-scan-naabu.txt


##### Erwan

> cyberchef | parse IP range > put IP in listIP.txt

> naabu -l listIP.txt | tee result-naabu-scan.txt

> [[Parse-IP-with-Port.py]] -f result-naabu-scan.txt 

#### ZENMAP

> nmap -T4 -A -v "IP RANGE"

