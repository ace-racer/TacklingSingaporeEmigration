import pandas as pd
import math

csv_files = [
    "../data/WHR2018Chapter2OnlineData.csv"
]

queries_insert_detail = ""
queries_fact_master = ""


def valid_numeric(value):
    if value and not math.isnan(value):
        return str(value)
    else:
        return 0


for csv_file in csv_files:
    df = pd.read_csv(csv_file, encoding="ISO-8859-1")
    headers = df.columns.values
    print(headers)
    for idx, row in df.iterrows():
        if row["Country ID"] and not pd.isnull(row["Country ID"]) and row["Happines Index"] > 0:
            country_id = valid_numeric(row["Country ID"])
            time_id = valid_numeric(row["Time ID"])
            happiness_index = valid_numeric(row["Happines Index"])
            gdp_per_capita = valid_numeric(row["Log GDP per capita"])
            social_support = valid_numeric(row["Social support"])
            healthy_life = valid_numeric(row["Healthy life expectancy at birth"])
            freedom = valid_numeric(row["Freedom to make life choices"])
            generosity = valid_numeric(row["Generosity"])
            trust = valid_numeric(row["Perceptions of corruption"])
            print([country_id, time_id, happiness_index, gdp_per_capita, social_support, healthy_life, freedom, generosity, trust])
            queries_insert_detail += "INSERT INTO DimHappiness " \
                                     "(countryid, timeid, HappinessIndex, " \
                                     "GDPPerCapita, SocialSupportIndex, HealthLifeExpectancyIndex, " \
                                     "FreedomLifeChoiceIndex, GenerosityIndex, PerceptionOfCorruptionIndex) " \
                                     "VALUES ({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8});\n".\
                format(country_id, time_id, happiness_index,
                       gdp_per_capita, social_support, healthy_life,
                       freedom, generosity, trust)

            queries_fact_master += "UPDATE FactMaster SET HappinessID = (SELECT HappinessID FROM DimHappiness WHERE CountryID = {0} AND timeid = {1})".format(
            country_id, time_id) + " WHERE CountryID = {0} AND TimeID = {1}; \n".format(country_id, time_id)

with open("happiness_index_queries.sql", "w") as fw:
    fw.writelines(queries_insert_detail)

with open("update_fact_master_happiness.sql", "w") as fw:
    fw.writelines(queries_fact_master)

