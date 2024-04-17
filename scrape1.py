import requests
from bs4 import BeautifulSoup

url = 'https://www.businesstoday.in/mutual-funds/best-mf'
response = requests.get(url)
soup = BeautifulSoup(response.text, 'html.parser')

# Find all rows in the table
rows = soup.find_all('div', class_='wdg_tbl_tr')

# Loop over each row
for row in rows:
    # Find all cells in the row
    cells = row.find_all('div', class_='wdg_tbl_td')

    # Extract text from each cell
    cell_texts = [cell.get_text(strip=True) for cell in cells]
    
    print(cell_texts)