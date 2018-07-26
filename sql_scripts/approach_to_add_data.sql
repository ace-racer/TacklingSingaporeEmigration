-- for inserting into dimmigration a migration rate value of 0.83 for country Singapore and year 2001
-- note that the date ID for 2001 is 2 and countryid for Singapore is 1
-- note the ID for the migration record say it is 20
insert into DimMigration(NetMigrationRate, timeid, countryid) values(0.83, 2, 1);

-- use the value of the timeid and countryid to create the factmaster record if it does not exist or update the same if it exists
-- all the values can be obtained from the dimmigration table (since they were created above) so take all the created records in Excel and write a formula that generates the SQL statements as below
update FactMaster set MigrationID = 20 where timeid = 2 and countryid = 1;