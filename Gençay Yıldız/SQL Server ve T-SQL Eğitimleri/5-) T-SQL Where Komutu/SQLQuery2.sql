USE Northwind

-- Select Sorgularýnda (Where) Þartý Yazmak

Select * from Personeller

-- Personeller tablosunda þehri London olan verileri listeleyelim
Select * from Personeller Where Sehir = 'London'

-- Personeller tablosunda baðlý çalýþtýðý kiþi sayýsý 5'ten küçük olanlarý listeleyelim
Select * from Personeller Where BagliCalistigiKisi < 5

-- And Operatör
-- Personeller tablosunda þehri London ve ülkesi UK olanlarý listeleyelim.
Select * from Personeller Where Sehir = 'London' and Ulke ='UK'

-- Or Operatörü
-- Personeller tablosunda UnvanEki 'Mr.' olan veya þehri Seattle olan tüm personelleri listeleyelim
Select * from Personeller Where UnvanEki ='Mr.' Or Sehir = 'Seattle'

-- Karýþýk Örnekler
-- Adý Robert Soyadý King olan personelin tüm bilgilerini çek.
Select * from Personeller Where Adi = 'Robert' and SoyAdi ='King'

-- PersonelID'si 5 olan personeli getir.
Select * from Personeller Where PersonelID = 5

-- PersonelID'si 5'ten büyük olan personelleri getir.
Select * from Personeller Where PersonelID >= 5

-- <> Eþit Deðilse
-- = Eþitse
-- <= Küçük ve Eþitse
-- >= Büyük ve Eþitse

-- Fonksiyon Sonuçlarýný Þart Olarak Kullanmak
-- 1993 yýlýnda iþe baþlayanlarý listele
Select * from Personeller Where YEAR(IseBaslamaTarihi) = 1993

-- 1992 yýlýndan sonra iþe baþlayanlarý listele.
Select * from Personeller Where YEAR(IseBaslamaTarihi) > 1992

-- Doðum günü,ayýn 29 olmayan personelleri listeleyelim
Select * from Personeller Where DAY(DogumTarihi) <> 29

-- Doðum yýlý 1950 ile 1965 yýk-llarý arasýnda olan personelleri getirelim
Select * from Personeller Where YEAR(DogumTarihi) > 1950 and YEAR(DogumTarihi) < 1965

-- Yaþadýðý þehrin London, Tacoma ve Kirkland olan personellerin adýný listeleyelim
Select Adi from Personeller Where Sehir = 'London' or Sehir = 'Tacoma' or Sehir = 'Kirkland'