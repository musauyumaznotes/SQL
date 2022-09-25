-- DML (Data Manipulation Language)

-- Insert 
-- Insert [Tablo Ad�](Kolonlar) Values(De�erler)
Insert Personeller(Adi,SoyAdi) Values('Musa','Uyumaz')
Insert Personeller Values('Uyumaz','Musa','Yaz�l�m Veritaban� Geli�tirici','YM','14.02.1999',GETDATE(),'Eski�ehir','Eski�ehir','�� Anadolu','26600','T�rkiye','02221111111',null,null,null,null)

--[Dikkat Edilmesi Gerekenler!!!]
-- Into Komutu ile Yaz�labilir
Insert Into Personeller(Adi,SoyAdi) Values('Musa','Uyumaz')
-- Kolonun kabul etti�i veri tipi ve karakter uzunlu�unda kay�t yap�lmal�d�r.
-- Not Null olan kolonlara bo� b�rak�lamayacaklar�ndan dolay� mutlaka de�er g�nderilmelidir.
Insert Personeller(Adi,SoyAdi,Unvan,UnvanEki) Values('','','a','b')
-- Otomatik artan(identity) kolonlara de�er g�nderilmez.
-- Tablodaki se�ilen yahut b�t�n kolonlara de�er g�nderilece�i belirtilip, g�nderilmezse hata verecektir.
Insert Into Personeller(Adi,SoyAdi) Values('Musa')
Insert Into Personeller Values('Musa')

-- [Pratik Kullan�m]
Insert Musteriler(MusteriAdi,Adres) Values('Hilmi','�orum')
Insert Musteriler(MusteriAdi,Adres) Values('Necati','�ank�r�')
Insert Musteriler(MusteriAdi,Adres) Values('R�fk�','Yozgat')

Insert Musteriler(MusteriAdi,Adres) Values('Hilmi','�orum'),
										  ('Necati','�ank�r�'),
										  ('R�fk�','Yozgat')