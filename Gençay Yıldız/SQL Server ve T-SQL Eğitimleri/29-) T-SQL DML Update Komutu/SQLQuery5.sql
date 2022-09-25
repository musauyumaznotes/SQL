-- DML (Data Manipulation Language)

--Update
-- Update [Tablo Ad�] Set [Kolon Ad�] = De�er
Update OrnekPersoneller Set Adi = 'Mehmet'

-- [Update Sorgusuna Where �art� Yazmak]
Update OrnekPersoneller Set Adi = 'Mehmet' Where Adi = 'Nancy'
Update OrnekPersoneller Set Adi = 'Ay�e' Where SoyAdi = 'Davolio'

-- [Update Sorgusunda Join Yap�lar�n� Kullanarak Birden Fazla Tabloda G�ncelleme Yapmak]
Update Urunler Set UrunAdi = k.KategoriAdi from Urunler u Inner Join Kategoriler k on u.KategoriID = k.KategoriID

-- [Update Sorgusunda Subquery �le G�ncelleme Yapmak]
Update Urunler Set UrunAdi = (Select Adi from Personeller Where PersonelID = 3)

-- [Update Sorgusunda Top Keyword� �le G�ncelleme Yapmak]
Update Top(30) urunler Set UrunAdi = 'x' 