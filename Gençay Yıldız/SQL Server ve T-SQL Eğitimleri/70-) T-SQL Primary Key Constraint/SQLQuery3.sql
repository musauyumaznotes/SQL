-- === PRIMARY KEY CONSTRAINT ===
-- Primary Key Constraint ile; o kolona eklenen primary key ile, ba�ka tablolarda foreign key olu�turarak ili�ki kurmam�z m�mk�n olur.Bunun yan�nda o kolonun ta��d��� verinin tekil olaca�� da garanti edilmi� olur. Primary Key contraint ile ayr�ca CLUSTERED �index olu�turulmu� da olur.

-- Genel Yap�s�;
-- Add Constraint [Constraint Ad�] Primary Key (Kolon Ad�)

-- D�KKAT!!!
-- Primary Key Constraint kullan�lan kolon primary key �zelli�ine sahip olmamal�d�r.

Alter Table OrnekTablo
Add Constraint PrimaryId Primary Key (Id)