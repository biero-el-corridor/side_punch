
```sh
#!/bin/bash      
  
file=$(cat temp.txt)  
  
for line in $file  
do     
   echo -e "$line\n"  
   impacket-rpcdump "$line" |grep 'MS-RPRN|MS-PAR'  
done
```

