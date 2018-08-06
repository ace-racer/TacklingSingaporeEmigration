import yaml
import os
import errno
import pyodbc
import pandas 
import re

from BaseOperations import BaseOperations

class SQLServerOperations(BaseOperations):

    def __init__(self):
        super().__init__()
        self.insert_query_template = "INSERT INTO {0}({1}) VALUES ({2})"
        self.compiled_pattern_for_real_values = re.compile('\d+(\.\d+)?')

    def read_all_records(self, table_name):
        if self.configurations is not None:
            cnxn = pyodbc.connect(self.configurations["target_connection_string"])
            cursor = cnxn.cursor()
            cursor.execute('SELECT * FROM ' + table_name)
            
            for row in cursor:
                print('row = %r' % (row,))

    
    def insert_new_records(self, insert_queries, table_name):
        if self.configurations is not None and insert_queries is not None:
            try:
                cnxn = pyodbc.connect(self.configurations["target_connection_string"])
                key_in_fact_master = self.configurations["key_in_fact_master"]
                cursor = cnxn.cursor()

                for insert_query in insert_queries:
                    print(insert_query)
                    if insert_query[1] and insert_query[2]:
                        # insert into the dimension table
                        cursor.execute(insert_query[0])
                        cnxn.commit() 
                        print("Executed [{0}] successfully.".format(insert_query[0]))  

                        timeid = insert_query[1]
                        countryid = insert_query[2]

                        cursor.execute("Select ident_current('{0}')".format(table_name))
                        fetch_result = cursor.fetchall()
                        if fetch_result:
                            first_row = fetch_result[0]
                            id_value = first_row[0]
                            print("ID: " + str(id_value))
                            fact_master_query = "insert into factmaster (countryid, timeid, {0}) values({1}, {2}, {3})".format(key_in_fact_master, countryid, timeid, id_value)
                            print("Trying to execute [{0}].".format(fact_master_query))
                            cursor.execute(fact_master_query)
                            print("Executed [{0}] successfully.".format(fact_master_query))
                            cnxn.commit()     
            except Exception as e:
                print("Error occurred while inserting record. Details: " + str(e))
                return None

    def insert_required_records(self, spreadsheet_operations):
        if spreadsheet_operations is not None and self.configurations is not None:
            
            try:
                table_name = self.configurations["table_name"]
                input_df = spreadsheet_operations.read_all_rows_from_sheet()
                column_names = spreadsheet_operations.get_sheet_headers()
                # print(column_names)

                cnxn = pyodbc.connect(self.configurations["target_connection_string"])

                insert_query_columns = ",".join(column_names)

                # filter the rows by the year and the month
                if input_df is not None:
                    insert_queries = []
                    for _, row in input_df.iterrows():
                        query_values = []
                        timeid = None
                        countryid = None
                        for column_idx in range(len(column_names)):
                           
                            query_value = str(row[column_names[column_idx]])
                            
                            # get the value of the time id
                            if column_names[column_idx].lower() == self.TIMEID_STR:
                                timeid = int(float(query_value))
                            
                            # get the value of the country id
                            if column_names[column_idx].lower() == self.COUNTRYID_STR:
                                countryid = int(float(query_value))
                            
                            if self.compiled_pattern_for_real_values.match(query_value):
                                query_values.append(query_value)
                            else:
                                query_values.append("'{0}'".format(query_value))
                        
                        query_values_appended = ",".join(query_values)
                        insert_query = self.insert_query_template.format(table_name, insert_query_columns, query_values_appended)
                        insert_queries.append((insert_query, timeid, countryid))

                    self.insert_new_records(insert_queries, table_name)
            except Exception as ex:
                print("An error occurred. Details: " + str(ex))
        else:
            print("Input dataframe is not properly read.")





            


