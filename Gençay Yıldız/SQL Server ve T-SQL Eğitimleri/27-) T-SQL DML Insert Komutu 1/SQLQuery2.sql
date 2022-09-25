-- DML (Data Manipulation Language)

-- Insert 
-- Insert [Tablo Adý](Kolonlar) Values(Deðerler)
Insert Personeller(Adi,SoyAdi) Values('Musa','Uyumaz')
Insert Personeller Values('Uyumaz','Musa','Yazýlým Veritabaný Geliþtirici','YM','14.02.1999',GETDATE(),'Eskiþehir','Eskiþehir','Ýç Anadolu','26600','Türkiye','02221111111',null,null,null,null)

--[Dikkat Edilmesi Gerekenler!!!]
-- Into Komutu ile Yazýlabilir
Insert Into Personeller(Adi,SoyAdi) Values('Musa','Uyumaz')
-- Kolonun kabul ettiði veri tipi ve karakter uzunluðunda kayýt yapýlmalýdýr.
-- Not Null olan kolonlara boþ býrakýlamayacaklarýndan dolayý mutlaka deðer gönderilmelidir.
Insert Personeller(Adi,SoyAdi,Unvan,UnvanEki) Values('','','a','b')
-- Otomatik artan(identity) kolonlara deðer gönderilmez.
-- Tablodaki seçilen yahut bütün kolonlara deðer gönderileceði belirtilip, gönderilmezse hata verecektir.
Insert Into Personeller(Adi,SoyAdi) Values('Musa')
Insert Into Personeller Values('Musa')

-- [Pratik Kullaným]
Insert Musteriler(MusteriAdi,Adres) Values('Hilmi','Çorum')
Insert Musteriler(MusteriAdi,Adres) Values('Necati','Çankýrý')
Insert Musteriler(MusteriAdi,Adres) Values('Rýfký','Yozgat')

Insert Musteriler(MusteriAdi,Adres) Values('Hilmi','Çorum'),
										  ('Necati','Çankýrý'),
										  ('Rýfký','Yozgat')