import pandas as pd
import numpy as np

country_num = 198
query = ""
for itr in range(country_num):
    countryid = str(itr + 1)
    for jtr in range(18):
        timeid = str(jtr + 1)
        query += "update factmaster set MigrationID = (select MigrationID from DimMigration where CountryID = {0} and timeid = {1})".format(
            countryid, timeid) + "where CountryID = {0} and TimeID = {1}; \n".format(countryid, timeid)

with open("update_fact_master_emig.sql", "w") as fw:
    fw.writelines(query)
