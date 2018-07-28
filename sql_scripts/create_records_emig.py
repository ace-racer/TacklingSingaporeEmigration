import pandas as pd
import os

final_year = 2017

os.chdir('/Users/pierlim/PycharmProjects/TacklingSingaporeEmigration')
df = pd.read_csv("data/emigration_transformed.csv",
                 encoding="ISO-8859-1")
headers = df.columns.values
print(headers)
queries = ""
df = df[df["Year"] >= 2000]
df["Singapore"] = df["Singapore"].str.replace(",", "").astype(float)

for idx, row in df.iterrows():
    if row["CountryID"] and not pd.isnull(row["CountryID"]):
        countryid = str(int(row["CountryID"]))
        date_id = str(row["Year"] - 2000 + 1)
        value = (row["Singapore"])
        if value and not pd.isnull(value):
            # queries += "update dimmigration set emigrationNum = {0} where countryid = {1} and timeid = {2};\n".format(
            #     value, countryid, date_id)
            queries += "INSERT INTO DimMigration VALUES ({0}, {1}, {2});\n".format(value, countryid,
                                                                                   date_id)  # first time use insert

with open("emigration_queries.sql", "w") as fw:
    fw.writelines(queries)
