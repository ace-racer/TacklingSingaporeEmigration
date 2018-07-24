import pandas as pd
import numpy as np

query = ""
for itr in range(9):
    countryid = str(itr + 1)
    for jtr in range(18):
        timeid = str(jtr + 1)
        query += "update factmaster set economyid = (select EconomyID from DimEconomy where CountryID = {0} and timeid = {1})".format(countryid, timeid) + "where CountryID = {0} and TimeID = {1}; \n".format(countryid, timeid)


with open("update_fact_master.sql", "w") as fw:
    fw.writelines(query)