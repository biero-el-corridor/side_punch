# RECO 

#### Externe
1) [Shodan](https://www.shodan.io/dashboard)
	1) corelate the compagny name and the org: 
	2) search by country ex:  country:"TH"
2) [DNSdumpster](https://dnsdumpster.com/)
	1) search for info in [zone transfert](https://hackertarget.com/zone-transfer/)
3) [Sudomy](https://github.com/screetsec/Sudomy)
	1) search for subdomain or other info for discover shadow it

### Interne
#### Naabu 
##### Smart

> 1)  nmap –sn $target –T5 –vv  -oG grepable.txt


> 2) cat grepable.txt | grep Up | cut –d " " -f2 >> up_hosts.txt


> 3)  For i in $(cat up_hosts.txt); do sudo naabu –host $i  -nmap-cli ' nmap -sV'; done | tee service-scan-naabu.txt


##### Dumb

> cyberchef | parse IP range > put IP in listIP.txt

> naabu -l listIP.txt | tee result-naabu-scan.txt

> [[Parse-IP-with-Port.py]] -f result-naabu-scan.txt 

#### ZENMAP

> nmap -T4 -A -v "IP RANGE"

