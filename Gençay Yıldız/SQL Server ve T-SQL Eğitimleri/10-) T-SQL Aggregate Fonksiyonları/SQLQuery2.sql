USE Northwind

-- Aggregate Fonksiyonlar =>Bir tablodaki tüm veriler tüm satýrlarda iþlem yapmamýzý saðlayan fonksionlardýr

-- AVG : Ortalama alýr => Sayýsal veri tiplerinde çalýþýr
Select AVG(PersonelID) from Personeller

-- MAX : En büyük deðeri bulur. => Sayýsal veri tiplerinde çalýþýr
Select MAX(PersonelID) from Personeller

-- MIN : En küçük deðeri bulur. => Sayýsal veri tiplerinde çalýþýr
Select MIN(PersonelID) from Personeller

-- COUNT : Toplam sayýsýný verir
Select COUNT(*) from Personeller
Select COUNT(Adi) from Personeller

-- SUM: Toplamýný Verir  => Sayýsal veri tiplerinde çalýþýr
Select SUM(NakliyeUcreti) from Satislar