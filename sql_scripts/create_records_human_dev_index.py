import pandas as pd

final_year = 2017

csv_files = [
    "../data/Human_development_index_(HDI).csv"
]

queries_insert_detail = ""
queries_fact_master = ""

for csv_file in csv_files:
    df = pd.read_csv(csv_file, encoding="ISO-8859-1")
    headers = df.columns.values
    print(headers)
    for idx, row in df.iterrows():
        if row["Country ID"] and not pd.isnull(row["Country ID"]):
            country_id = str(int(row["Country ID"]))
            for year in range(2000, 2016):
                if row[str(year)] and not pd.isnull(row[str(year)]):
                    time_id = str(year - 2000 + 1)
                    human_dev_index = str(row[str(year)])
                    print([country_id, time_id, human_dev_index])
                    queries_insert_detail += "INSERT INTO DimHumanDev " \
                                             "(countryid, timeid, HumanDevIndex) " \
                                             "VALUES ({0}, {1}, {2});\n".\
                        format(country_id, time_id, human_dev_index)

                    queries_fact_master += "UPDATE FactMaster SET HumanDevID = (SELECT HumanDevID FROM DimHumanDev WHERE CountryID = {0} AND timeid = {1})".format(
                    country_id, time_id) + " WHERE CountryID = {0} AND TimeID = {1}; \n".format(country_id, time_id)

with open("human_development_index_queries.sql", "w") as fw:
    fw.writelines(queries_insert_detail)

with open("update_fact_master_human_development_index.sql", "w") as fw:
    fw.writelines(queries_fact_master)


