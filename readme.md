Configurations
- Update configurations.yaml
- Connection string: Values used to connect to the SQL Server database
- Source file location: The location of the source file to get the records for insertion
- Table name: The table name for inserting the records

Dependencies
- SQL Server 2017 with a database named **SingaporeEmigration**

Set up
- Use the SQL script inside sql_scripts to create the required database objects in the **SingaporeEmigration** database

Execute 
- Run the application using the following: ``` python ConsoleClient.py ```
- This will create only the recent records from the spreadsheet into the table in SQL Server