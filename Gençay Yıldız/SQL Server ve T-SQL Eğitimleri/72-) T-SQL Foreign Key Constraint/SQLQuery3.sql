-- === FOREIGN KEY CONSTRAINT ===
-- Tabloalraýn kolonlarý arasýnda iliþki kurmamýzý saðlar. Bu iliþki neticesinde foreign key olan kolondaki karþýlýðýnýn boþa düþmemesi için primary key kolonu olan tablodan veri silinmesini güncellenmesini engeller.

-- Genel Yapýsý;
-- Add Constraint [Constraint Adý] Foreign Key (Kolon Adý) References [2. Tablo Adý](2. Tablodaki Kolon Adý)

--Create Table Ogrenciler
--(
--OgrenciId int primary key identity(1,1),
--DersId int,
--Adi nvarchar(max),
--SoyAdi nvarchar(max),
--)
--Create Table Dersler
--(
--DersId int primary key identity(1,1),
--DersAdi nvarchar(MAX)
--)
Alter Table Ogrenciler
Add Constraint ForeignKeyOgrenciDers Foreign Key (DersID) References Dersler(DersID)

-- Kaynak olan tabloda principal table'da kullanýlan referansa sahip satýr direkt referanstan silinmemektedir.
--Ýlk baþta git dependent table'daki iliþki kurduðun satýrý yok et sonra gel sil 

-- Þu durumda, delete ve update iþlemlerinden iliþkili kolondaki veriler etkilenmez.
-- Davranýþý deðiþtirmek için farklý komutlar kullanýlýr.