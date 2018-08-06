from SQLServerOperations import SQLServerOperations
from SpreadsheetOperations import SpreadsheetOperations

if __name__ == "__main__":
    sql_server_operations = SQLServerOperations()
    spreadsheet_operations = SpreadsheetOperations()
    sql_server_operations.insert_required_records(spreadsheet_operations)