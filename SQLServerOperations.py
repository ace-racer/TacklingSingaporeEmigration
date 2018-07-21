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

    
    def insert_new_records(self, insert_queries):
        if self.configurations is not None and insert_queries is not None:
            try:
                cnxn = pyodbc.connect(self.configurations["target_connection_string"])
                cursor = cnxn.cursor()

                for insert_query in insert_queries:
                    cursor.execute(insert_query)
                    print("Executed [{0}] successfully.".format(insert_query))  

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
                cursor = cnxn.cursor()

                cursor.execute("SELECT top(1) year, month from {0} order by year desc, month desc".format(table_name))
                first_row = cursor.fetchall()[0]
                latest_year = int(first_row[0])
                latest_month = int(first_row[1])
                latest_date_from_table = (latest_year, latest_month)
                print("Latest year {0} and latest month {1} already in table.".format(latest_year, latest_month))


                insert_query_columns = ",".join(column_names)

                # filter the rows by the year and the month
                if input_df is not None:
                    insert_queries = []
                    for _, row in input_df.iterrows():
                        query_values = []
                        for column_idx in range(len(column_names)):
                            query_value = str(row[column_names[column_idx]])
                            if self.compiled_pattern_for_real_values.match(query_value):
                                query_values.append(query_value)
                                if column_names[column_idx].lower() == "year":
                                    current_record_year = int(query_value)
                                
                                if column_names[column_idx].lower() == "month":
                                    current_record_month = int(query_value)
                            else:
                                query_values.append("'{0}'".format(query_value))
                        
                        query_values_appended = ",".join(query_values)
                        insert_query = self.insert_query_template.format(table_name, insert_query_columns, query_values_appended)
                        
                        current_record_date = (current_record_year, current_record_month)
                        if self._should_insert_current_record(latest_date_from_table, current_record_date):
                            print("Query: " + insert_query)
                            insert_queries.append(insert_query)

                    self.insert_new_records(insert_queries)
            except Exception as ex:
                print("An error occurred. Details: " + str(ex))
        else:
            print("Input dataframe is not properly read.")

    def _should_insert_current_record(self, latest_from_table, current_from_source):
        """
           date format as year, month
        """
        if current_from_source[0] > latest_from_table[0]:
            return True
        elif current_from_source[0] == latest_from_table[0]:
            if current_from_source[1] > latest_from_table[1]:
                return True
        
        return False





            


