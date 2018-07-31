import pandas as pd

final_year = 2017

csv_files = [
    "../data/un_world_happiness_report_index_2015.csv",
    "../data/un_world_happiness_report_index_2017.csv",
    "../data/un_world_happiness_report_index_2018.csv"
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
            time_id = str(int(row["Time ID"]))
            happiness_index = str(row["Score"])
            gdp_per_capita = str(row["GDP per capita"])
            social_support = str(row["Social support"])
            healthy_life = str(row["Healthy life expectancy"])
            freedom = str(row["Freedom to make life choices"])
            generosity = str(row["Generosity"])
            trust = str(row["Trust"])
            print([country_id, time_id, happiness_index, gdp_per_capita, social_support, healthy_life, freedom])
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

