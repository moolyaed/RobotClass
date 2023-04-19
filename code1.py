from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
driver=webdriver.Chrome(ChromeDriverManager().install())
driver.maximize_window
driver.get("https://www.facebook.com/")
print(driver.current_url)


# print("Srija")

# for i in range(0,10):
#     if  i%2==0:
#         print(i)
#     else:   i=i+1