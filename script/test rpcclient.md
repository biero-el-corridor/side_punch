```sh
#!/bin/bash  
  
file=$(cat temp.txt)  
  
for line in $file  
do  
   echo -e "$line\n"  
   rpcclient -N "$line"  
done
```