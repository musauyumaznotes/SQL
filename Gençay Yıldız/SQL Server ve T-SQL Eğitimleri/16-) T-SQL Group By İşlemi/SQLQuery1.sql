USE Northwind

-- Group By => E�er ki select sorgusunda bir normal kolon bir de ayriyetten aggregate fonksiyonu �a�r�l�yorsa normal olan kolonu gruplaman�z gerekecektir.
Select * from Urunler 

Select KategoriID,COUNT(*) from Urunler Group By KategoriID -- =>KategoriID'deki benzer olan verileri gruplay�p/paketleyip bu verilere kar��l�k gelen eleman say�s�n� sonu�lar�n� kar��lar�na yazarsam hgaliyle istedi�im sonucu elde etmi� olaca��m.

Select PersonelID,SUM(NakliyeUcreti) from Satislar Group By PersonelID
