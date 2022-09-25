-- T-SQL Ýle Veritabanýndaki Tablolarý Listeleme

Select * from sys.tables
-- ya da
Select * from sysobjects Where xtype = 'U'