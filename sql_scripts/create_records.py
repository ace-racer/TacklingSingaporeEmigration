import pandas as pd
import numpy as np

final_year = 2017

df = pd.read_csv("../data/population_density.csv", encoding = "ISO-8859-1")
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
                queries += "insert into dimcountryinfo (pop_density, timeid, countryid) values({0}, {1}, {2});\n".format(value, date_id, countryid)

with open("pop_density_queries.sql", "w") as fw:
    fw.writelines(queries)
