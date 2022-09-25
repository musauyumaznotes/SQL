USE Northwind

-- Group By Ýþleminde Having komutunu Kullanarak Þart Oluþturma  => Where noraml kolonlar üzerinde þart uygulayacaksak kullandýðýmýz þart komutudur lakin Having Aggregate fonksiyonu üzerinde þart uygulayacaksak kullandýðýmýz bir komuttur.
Select * from Urunler

Select KategoriID,COUNT(*) from Urunler Where KategoriID > 5 Group by KategoriID Having COUNT(*) > 6

Select PersonelID,COUNT(*) from Satislar Where PersonelID < 4 Group By PersonelID

Select PersonelID,SUM(NakliyeUcreti) from Satislar Group By PersonelID 