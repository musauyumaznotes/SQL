USE Northwind

-- Group By ��leminde Having komutunu Kullanarak �art Olu�turma  => Where noraml kolonlar �zerinde �art uygulayacaksak kulland���m�z �art komutudur lakin Having Aggregate fonksiyonu �zerinde �art uygulayacaksak kulland���m�z bir komuttur.
Select * from Urunler

Select KategoriID,COUNT(*) from Urunler Where KategoriID > 5 Group by KategoriID Having COUNT(*) > 6

Select PersonelID,COUNT(*) from Satislar Where PersonelID < 4 Group By PersonelID

Select PersonelID,SUM(NakliyeUcreti) from Satislar Group By PersonelID 