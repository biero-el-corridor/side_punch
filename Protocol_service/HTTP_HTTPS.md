### Reco
- path enumerations 
	- dirb
	- dirsearch -u http://some-random-site.com
	- nikto
- header and strural check
	- [scan4all](https://github.com/hktalent/scan4all)
	- [nuclei](https://github.com/projectdiscovery/nuclei) -l list-of-ip.txt
- software versions check 
	-  [wappanalyser](https://www.wappalyzer.com/)

### Reminder
- check cookie
- source code 
- OWASP TOP 10
	- https://owasp.org/www-project-top-ten/
## WORDPRESS 
-   `index.php`
- `license.txt` contains useful information such as the version WordPress installed.
- `wp-activate.php` is used for the email activation process when setting up a new WordPress site.
- Login folders (may be renamed to hide it):
	-  /wp-admin/login.php
	- /wp-admin/wp-login.php
	- /login.php
	- /wp-login.php
- xmlrpc.php
- The `wp-content` folder is the main directory where plugins and themes are stored.
- `wp-content/uploads/` Is the directory where any files uploaded to the platform are stored.
- `wp-includes/` This is the directory where core files are stored, such as certificates, fonts, JavaScript files, and widgets.
- Get user `http://blog.example.com/?author=1`
- Get Json `http://blog.example.com/wp-json/`
### MLRPC 

```
<methodCall>
<methodName>system.listMethods</methodName>
<params></params>
</methodCall>
```

```
<methodCall>
<methodName>wp.getUsersBlogs</methodName>
<params>
<param><value>admin</value></param>
<param><value>pass</value></param>
</params>
</methodCall>
```
### PLUGIN
- exploit [misconfigured CORS](https://vulners.com/hackerone/H1:1187543) in wordpress
## Exploitations 

- [web shell generator](https://www.revshells.com/)
- 