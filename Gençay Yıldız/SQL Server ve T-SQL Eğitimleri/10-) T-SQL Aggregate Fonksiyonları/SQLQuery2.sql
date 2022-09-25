USE Northwind

-- Aggregate Fonksiyonlar =>Bir tablodaki t�m veriler t�m sat�rlarda i�lem yapmam�z� sa�layan fonksionlard�r

-- AVG : Ortalama al�r => Say�sal veri tiplerinde �al���r
Select AVG(PersonelID) from Personeller

-- MAX : En b�y�k de�eri bulur. => Say�sal veri tiplerinde �al���r
Select MAX(PersonelID) from Personeller

-- MIN : En k���k de�eri bulur. => Say�sal veri tiplerinde �al���r
Select MIN(PersonelID) from Personeller

-- COUNT : Toplam say�s�n� verir
Select COUNT(*) from Personeller
Select COUNT(Adi) from Personeller

-- SUM: Toplam�n� Verir  => Say�sal veri tiplerinde �al���r
Select SUM(NakliyeUcreti) from Satislar