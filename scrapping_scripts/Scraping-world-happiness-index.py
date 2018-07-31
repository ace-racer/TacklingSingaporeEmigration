
# coding: utf-8

# In[1]:


import requests
import csv
from bs4 import BeautifulSoup


# In[2]:


url = "https://en.wikipedia.org/wiki/World_Happiness_Report#2013%E2%80%932015_averaged_ranking"

html_page = requests.get(url)
html_page.status_code
soup = BeautifulSoup(html_page.content, 'html.parser')


# In[4]:


with open('../data/world-happiness-index-2013-2015.csv', 'w') as csv_file:
    writer = csv.writer(csv_file, quoting=csv.QUOTE_ALL)
    header = ['Overall Rank', 'Country', 'Score', 'Change Over Prior Year', 'GDP per capita', 'Social support', 'Healthy life expectancy', 'Freedom to make life choices', 'Generosity', 'Trust']
    writer.writerow(header)
    for segment in soup.select("div#mw-content-text > div > div:nth-of-type(7) > table > tbody > tr:nth-of-type(2) > td > table.wikitable.sortable > tbody > tr"):
        cells = segment.find_all('td')
        if len(cells) > 0:
            overal_rank = cells[0].text.strip()
            country = cells[1].text.strip()
            happiness_score = cells[2].text.strip()
            change = cells[3]['data-sort-value']
            gdp_per_capita = cells[4]['data-sort-value']
            social_support = cells[5]['data-sort-value']
            healthy_life_expectancy = cells[6]['data-sort-value']
            freedom = cells[7]['data-sort-value']
            generosity = cells[8]['data-sort-value']
            trust = cells[9]['data-sort-value']
            row = [overal_rank, country, happiness_score, change, gdp_per_capita, social_support, healthy_life_expectancy, freedom, generosity, trust]
            writer.writerow(row)

