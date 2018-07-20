import yaml
import os
import errno
import pyodbc 

class SQLServerOperations:

    def __init__(self):
        self.configurations = None
        CONFIGURATION_FILE_NAME = "configurations.yaml"

        if not os.path.exists(CONFIGURATION_FILE_NAME):
            raise FileNotFoundError(errno.ENOENT, os.strerror(errno.ENOENT), CONFIGURATION_FILE_NAME) 
        
        with open(CONFIGURATION_FILE_NAME, "r") as stream:
           self.configurations = yaml.load(stream)

    def read_all_records(self, table_name):
        if self.configurations is not None:
            cnxn = pyodbc.connect(self.configurations["target_connection_string"])
            cursor = cnxn.cursor()
            cursor.execute('SELECT * FROM ' + table_name)
            
            for row in cursor:
                print('row = %r' % (row,))
