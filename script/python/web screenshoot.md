```python
  

'''

le but de se script et d'avoir un point de vue rapide sur le contenue des page web durant un audit


crée un fichier http et un chochier https

'''

from selenium.webdriver.support import expected_conditions as EC
from selenium import webdriver
from selenium.webdriver.firefox.options import Options
from urllib.parse import urlparse
from selenium.webdriver.support.ui import WebDriverWait

with open("ip.txt", "r") as file:    
    # set up Firefox webdriver with headless option
    options = Options()
    options.headless = True
    driver = webdriver.Firefox()
    lines = file.readlines()
    n  = 0
    for line in lines:
        az = line
        ip = az.split("//")
        ip = ip[1]
        ip_str = str(ip.rstrip('\n')).replace(".","_")
        ze = "screenshot_"+ip_str+".png"
        print(ze)
        try:
            url = line  
            result = urlparse(url)
            if all([result.scheme, result.netloc]):
                # navigate to website and take screenshot                
                try:
                    driver.get(url)
                    driver.set_page_load_timeout(20)
                    if "https" in line:
                        print("HTTPS_screen\\" + ze)
                        driver.save_screenshot("HTTPS_screen\\" + ze)
                    else:
                        print("HTTP_screen\\" + ze)
                        driver.save_screenshot("HTTP_screen\\" + ze)
                except:
                    print("dont pass 2 : ", line)
                    pass
        except:
            print("dont pass 1: ", line)
            pass
        n += 1
    # close the webdriver
    driver.quit()
```