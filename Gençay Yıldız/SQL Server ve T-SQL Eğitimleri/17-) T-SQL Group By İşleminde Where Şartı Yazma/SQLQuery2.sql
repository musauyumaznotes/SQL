USE Northwind

-- Group By Ýþleminde Where Þartý Kullanma
Select * from Urunler

Select KategoriID,COUNT(*) from Urunler Where KategoriID > 5 Group By KategoriID 

Select PersonelID,COUNT(*) from Satislar  Where PersonelID < 4 Group By PersonelID

Select PersonelID,SUM(NakliyeUcreti) from Satislar Group By PersonelID