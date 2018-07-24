import pandas as pd
import numpy as np

final_year = 2017

df = pd.read_csv("unemployments_1.csv", encoding = "ISO-8859-1")
headers = df.columns.values
print(headers)
queries = ""
for idx, row in df.iterrows():
    if row["CountryID"] and not pd.isnull(row["CountryID"]):
        for itr in range(final_year - 2000 + 1):
            countryid = str(int(row["CountryID"]))
            column_name = str(itr + 1)
            value = (row[column_name])
            if value and not pd.isnull(value):
                value = "{:0.3f}".format(value)
                queries += "insert into dimeconomy(unemploymentrate, countryid, timeid) values({0}, {1}, {2});\n".format(value, countryid, column_name)

with open("queries.sql", "w") as fw:
    fw.writelines(queries)
