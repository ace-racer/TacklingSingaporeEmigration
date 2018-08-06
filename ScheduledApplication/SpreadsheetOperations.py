import pandas as pd
import os
import errno 

from BaseOperations import BaseOperations

class SpreadsheetOperations(BaseOperations):
    def __init__(self):
        super().__init__()

    
    def read_all_rows_from_sheet(self):
        file_location = self.configurations["source_file_location"]
        if not os.path.exists(file_location):
            raise FileNotFoundError(errno.ENOENT, os.strerror(errno.ENOENT), file_location) 
        input_df = pd.read_csv(file_location, header=0)
        return input_df

    def get_sheet_headers(self):
        file_location = self.configurations["source_file_location"]
        if not os.path.exists(file_location):
            raise FileNotFoundError(errno.ENOENT, os.strerror(errno.ENOENT), file_location) 
        input_df = pd.read_csv(file_location, header=0)
        return input_df.columns.values
