-- T-SQL �le Veritaban�ndaki Tablolar� Listeleme

Select * from sys.tables
-- ya da
Select * from sysobjects Where xtype = 'U'