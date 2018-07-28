# Used to update the remaining countries in the fact table (other than the 1st 10 added)

import pandas as pd
import numpy as np

query = ""
country_num = 198

for itr in range(9, country_num):
    countryid = str(itr + 1)
    for jtr in range(18):
        timeid = str(jtr + 1)
        query += "INSERT INTO factmaster (CountryID, TimeID) VALUES ({0}, {1});\n".format(countryid, timeid)

with open("update_fact_master_remain_countries.sql", "w") as fw:
    fw.writelines(query)
