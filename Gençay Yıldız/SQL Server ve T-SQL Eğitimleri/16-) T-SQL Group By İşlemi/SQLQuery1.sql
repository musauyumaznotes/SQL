USE Northwind

-- Group By => Eðer ki select sorgusunda bir normal kolon bir de ayriyetten aggregate fonksiyonu çaðrýlýyorsa normal olan kolonu gruplamanýz gerekecektir.
Select * from Urunler 

Select KategoriID,COUNT(*) from Urunler Group By KategoriID -- =>KategoriID'deki benzer olan verileri gruplayýp/paketleyip bu verilere karþýlýk gelen eleman sayýsýný sonuçlarýný karþýlarýna yazarsam hgaliyle istediðim sonucu elde etmiþ olacaðým.

Select PersonelID,SUM(NakliyeUcreti) from Satislar Group By PersonelID
