import requests
from bs4 import BeautifulSoup

#req = requests.get('https://www.amfiindia.com/')
req = requests.get('https://www.moneycontrol.com/mutualfundindia/')

soup = BeautifulSoup(req._content,"html.parser")

#print(soup.prettify())

# Scraping data from the table

table = soup.find("table", class_="mcfundtbl")


print(table)

