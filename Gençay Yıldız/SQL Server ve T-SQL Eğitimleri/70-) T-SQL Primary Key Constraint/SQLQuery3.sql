-- === PRIMARY KEY CONSTRAINT ===
-- Primary Key Constraint ile; o kolona eklenen primary key ile, baþka tablolarda foreign key oluþturarak iliþki kurmamýz mümkün olur.Bunun yanýnda o kolonun taþýdýðý verinin tekil olacaðý da garanti edilmiþ olur. Primary Key contraint ile ayrýca CLUSTERED þindex oluþturulmuþ da olur.

-- Genel Yapýsý;
-- Add Constraint [Constraint Adý] Primary Key (Kolon Adý)

-- DÝKKAT!!!
-- Primary Key Constraint kullanýlan kolon primary key özelliðine sahip olmamalýdýr.

Alter Table OrnekTablo
Add Constraint PrimaryId Primary Key (Id)