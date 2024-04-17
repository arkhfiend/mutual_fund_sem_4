import requests
from bs4 import BeautifulSoup
import mysql.connector

url = 'https://www.businesstoday.in/mutual-funds/best-mf'
response = requests.get(url)
soup = BeautifulSoup(response.text, 'html.parser')

# Find all rows in the table
rows = soup.find_all('div', class_='wdg_tbl_tr')

# Connect to the database
cnx = mysql.connector.connect(user='root', password='Aarya@1971', host='localhost', database='mfdb')

# Create a cursor object
cursor = cnx.cursor()

# Loop over each row
for row in rows:
    # Find all cells in the row
    cells = row.find_all('div', class_='wdg_tbl_td')

    # Extract text from each cell
    cell_texts = [cell.get_text(strip=True) for cell in cells]

    # Check that the row has the expected number of cells
    if len(cell_texts) >= 8:
        # Create a dictionary for the mutual fund
        fund = {
            'name': cell_texts[0],
            'category_rank': cell_texts[1],
            'morningstar_rating': cell_texts[2],
            'nav': cell_texts[3],
            'fund_return': cell_texts[4],
            'category_return': cell_texts[5],
            'risk': cell_texts[6],
            'fund_size': cell_texts[7]
        }

        # Insert the data
        query = ("INSERT INTO mutual_funds "
                 "(name, category_rank, morningstar_rating, nav, fund_return, category_return, risk, fund_size) "
                 "VALUES (%s, %s, %s, %s, %s, %s, %s, %s)")
        data = (fund['name'], fund['category_rank'], fund['morningstar_rating'], fund['nav'], fund['fund_return'], fund['category_return'], fund['risk'], fund['fund_size'])
        cursor.execute(query, data)

# Commit the changes
cnx.commit()

# Close the cursor and connection
cursor.close()
cnx.close()