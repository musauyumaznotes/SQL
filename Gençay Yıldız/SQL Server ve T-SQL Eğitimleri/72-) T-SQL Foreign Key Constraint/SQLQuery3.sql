-- === FOREIGN KEY CONSTRAINT ===
-- Tabloalra�n kolonlar� aras�nda ili�ki kurmam�z� sa�lar. Bu ili�ki neticesinde foreign key olan kolondaki kar��l���n�n bo�a d��memesi i�in primary key kolonu olan tablodan veri silinmesini g�ncellenmesini engeller.

-- Genel Yap�s�;
-- Add Constraint [Constraint Ad�] Foreign Key (Kolon Ad�) References [2. Tablo Ad�](2. Tablodaki Kolon Ad�)

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

-- Kaynak olan tabloda principal table'da kullan�lan referansa sahip sat�r direkt referanstan silinmemektedir.
--�lk ba�ta git dependent table'daki ili�ki kurdu�un sat�r� yok et sonra gel sil 

-- �u durumda, delete ve update i�lemlerinden ili�kili kolondaki veriler etkilenmez.
-- Davran��� de�i�tirmek i�in farkl� komutlar kullan�l�r.