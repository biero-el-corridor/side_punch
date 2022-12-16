## Windows

- [payload all the thing / Windows](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Windows%20-%20Persistence.md)
- [startup folder](**C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp**)
- HKLM key 

### Custom sartup folder Lua persistence.  
- put ncat.exe in the startup folder 
- compile with ps2exe  the ncat revshell and put it in the startup folder