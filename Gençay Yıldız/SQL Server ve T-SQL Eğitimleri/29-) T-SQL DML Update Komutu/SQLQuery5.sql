-- DML (Data Manipulation Language)

--Update
-- Update [Tablo Adý] Set [Kolon Adý] = Deðer
Update OrnekPersoneller Set Adi = 'Mehmet'

-- [Update Sorgusuna Where Þartý Yazmak]
Update OrnekPersoneller Set Adi = 'Mehmet' Where Adi = 'Nancy'
Update OrnekPersoneller Set Adi = 'Ayþe' Where SoyAdi = 'Davolio'

-- [Update Sorgusunda Join Yapýlarýný Kullanarak Birden Fazla Tabloda Güncelleme Yapmak]
Update Urunler Set UrunAdi = k.KategoriAdi from Urunler u Inner Join Kategoriler k on u.KategoriID = k.KategoriID

-- [Update Sorgusunda Subquery Ýle Güncelleme Yapmak]
Update Urunler Set UrunAdi = (Select Adi from Personeller Where PersonelID = 3)

-- [Update Sorgusunda Top Keywordü Ýle Güncelleme Yapmak]
Update Top(30) urunler Set UrunAdi = 'x' 