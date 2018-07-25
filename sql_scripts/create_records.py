import pandas as pd
import numpy as np

final_year = 2017

df = pd.read_csv("../data/gdp_pc_ppp_usa_uk.csv", encoding = "ISO-8859-1")
headers = df.columns.values
print(headers)
queries = ""
for idx, row in df.iterrows():
    if row["CountryID"] and not pd.isnull(row["CountryID"]):
        for itr in range(final_year - 2000 + 1):
            countryid = str(int(row["CountryID"]))
            date_id = str(itr + 1)
            value = (row[date_id])
            if value and not pd.isnull(value):
                value = "{:0.3f}".format(value)
                queries += "update dimeconomy set purchasingpowerindex = {0} where countryid = {1} and timeid = {2};\n".format(value, countryid, date_id)

with open("ppp_queries.sql", "w") as fw:
    fw.writelines(queries)
