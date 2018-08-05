import pandas as pd
import math

final_year = 2017

csv_files = {
    "Human Development Index": "../data/Human development index (HDI).csv",
    "Income Index": "../data/Income Index.csv",
    "Education Index": "../data/Education Index.csv",
    "Life expectancy Index": "../data/Life expectancy Index.csv",
}

hdi_data = {}
queries_insert_detail = ""
queries_fact_master = ""


def valid_numeric(value):
    if value and not math.isnan(value):
        return str(value)
    else:
        return 0


for csv_key in csv_files:
    df = pd.read_csv(csv_files[csv_key], encoding="ISO-8859-1")
    headers = df.columns.values
    for idx, row in df.iterrows():
        if row["Country ID"] and not pd.isnull(row["Country ID"]):
            country_id = int(row["Country ID"])
            if country_id not in hdi_data:
                hdi_data[country_id] = {}
            for year in range(2000, 2016):
                time_id = year - 2000 + 1
                if time_id not in hdi_data[country_id]:
                    hdi_data[country_id][time_id] = {}
                try:
                    country_id = int(row["Country ID"])
                    hdi_data[country_id][time_id][csv_key] = row[str(year)]
                except KeyError:
                    hdi_data[country_id][time_id][csv_key] = 0

for country_id in hdi_data:
    for time_id in hdi_data[country_id]:
        values = {}
        try:
            human_dev_index = valid_numeric(hdi_data[country_id][time_id]["Human Development Index"])
            income_index = valid_numeric(hdi_data[country_id][time_id]["Income Index"])
            education_index = valid_numeric(hdi_data[country_id][time_id]["Education Index"])
            life_expectancy_index = valid_numeric(hdi_data[country_id][time_id]["Life expectancy Index"])

            queries_insert_detail += "INSERT INTO DimHumanDev " \
                                     "(countryid, timeid, HumanDevIndex, IncomeIndex, EducationIndex, LifeExpectancyIndex) " \
                                     "VALUES ({0}, {1}, {2}, {3}, {4}, {5});\n". \
                format(country_id, time_id, human_dev_index, income_index, education_index, life_expectancy_index)

            queries_fact_master += "UPDATE FactMaster SET HumanDevID = (SELECT HumanDevID FROM DimHumanDev WHERE CountryID = {0} AND timeid = {1})".format(
                country_id, time_id) + " WHERE CountryID = {0} AND TimeID = {1}; \n".format(country_id, time_id)
        except KeyError:
            print("No HDI for country_id", country_id, "time_id", time_id)

with open("human_development_index_queries.sql", "w") as fw:
    fw.writelines(queries_insert_detail)

with open("update_fact_master_human_development_index.sql", "w") as fw:
    fw.writelines(queries_fact_master)

