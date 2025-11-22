/*
=============================
Creating Database and Schemas
=============================
Script Purpose
	This script creates a new databse named 'DataWaehouse'.It first checks if its already exist if it does it drops it and recreate a new one
	Also sets up three schemas within the database, 'bronze', 'silver' and 'gold'
*/

Use master;
go

---Drops and recreate the database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET single_user WITH ROLLBACK IMMEDIATE
	DROP DATABASE DataWarehouse;
END;
GO

Use DataWarehouse;

---Create Schemas
CREATE SCHEMA bronze;
go
CREATE SCHEMA silver;
go
CREATE SCHEMA gold;	