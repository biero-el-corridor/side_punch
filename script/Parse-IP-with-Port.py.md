```python
"""

Vinci méthod to pentest

  

- make a naabu or nmap scan to see up host

- make a naabu open port scan on up host

- retreve the ip+port in a txt file

- apply the script and start the pentest

  

To do:

    - propose a methode of organisations

  

Done:

    - create md file that corelate to up host

    - corelate ip to open port

  

"""

  
import argparse
from sys import path

parser.add_argument('-f','--file', help='get the filename to parse', type=str)
  
args = parser.parse_args()

def Create_md_folder(path_to_folder):

    count = 0

    test_count_ip = 0

    with open(args.file(),"r") as file:

        lines = file.readlines()

        for line in lines:

            count += 1

  

            #get ip and port individualy

            ip_port = line.split(":")

            # get exeptions of the last ip

            try:

                next_line = lines[count].split(":")

            except:

                next_line = lines[-1].split(":")

            if ip_port[0] == next_line[0]:

                file_path = "{}/{}".format(path_to_folder,ip_port[0]).strip()+".md"

                with open(file_path,"a") as ip_file:

                    port = str(ip_port[1])

                    ip_file.write("[["+port.strip()+"]]"+"\n")

  

            else:

                file_path = "{}/{}".format(path_to_folder,ip_port[0]).strip()+".md"

                with open(file_path,"a") as ip_file:

                    port = str(ip_port[1])

                    ip_file.write("[["+port.strip()+"]]"+"\n")

                test_count_ip += 1

  
  

if __name__ == "__main__":

    Create_md_folder("ip")
```