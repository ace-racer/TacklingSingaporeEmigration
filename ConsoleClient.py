from SQLServerOperations import SQLServerOperations

if __name__ == "__main__":
    sql_server_operations = SQLServerOperations()
    sql_server_operations.read_all_records("Customers")