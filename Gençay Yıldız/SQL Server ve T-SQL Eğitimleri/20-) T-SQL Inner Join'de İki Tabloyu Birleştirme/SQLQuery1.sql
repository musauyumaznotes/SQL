-- Inner Join => Birden fazla tabloyu iliþkisel kolonlar aracýlýðýyla birleþtirip tek bir tablo haline getiren bir yapýdýr.

-- Genel Mantýk 
-- Select * from Tablo1 Inner Join Tablo2  on Tablo1.IliþkiliKolon = Tablo2.IliþkiliKolon

-- Tablolara alias tanýmlanabilir
-- Select * from Tablo1 t1 Inner Join Tablo2 t2  on t1.IliþkiliKolon = t2.IliþkiliKolon

-- Ýki Tabloyu Ýliþkisel Birleþtirme

-- Hangi personel hangi satýþlarý yapmýþtýr (Personeller, Satýþlar)
Select * from Personeller p Inner Join  Satislar s On s.PersonelID = p.PersonelID

-- Hangi ürün hangi kategoride (Urunler, Kategoriler)
Select u.UrunAdi,k.KategoriAdi from Urunler u Inner Join Kategoriler k on k.KategoriID = u.KategoriID

-- Where komutunun kullanýmý

-- Beverages kategorisindeki ürünlerim (Urunler, Kategoriler)
Select u.UrunAdi from Urunler u Inner Join Kategoriler k on k.KategoriID = u.KategoriID Where k.KategoriAdi = 'Beverages'

-- Beverages kategorisindeki ürünlerimin sayýsý kaçtýr (Urunler, Kategoriler)
Select COUNT(u.UrunAdi) from Urunler u Inner Join Kategoriler k on k.KategoriID = u.KategoriID Where k.KategoriAdi = 'Beverages'

-- Seafood kategorisindeki ürünlerin listesi (Urunler, Kategoriler)
Select u.UrunAdi from Urunler u Inner Join Kategoriler k on k.KategoriID = u.KategoriID Where k.KategoriAdi = 'Seafood'

-- Hangi satýþý hangi çalýþaným yapmýþ (Satislar Personeller)
Select s.SatisID,p.Adi + ' ' + p.SoyAdi  from Satislar s inner join Personeller p on p.PersonelID = s.PersonelID 

-- Faks numarasý null olmayan tedarikçilerden alýnmýþ ürünler nelerdir? ( Urunler, Tedarikçiler)
Select * from Urunler u inner join Tedarikciler t on t.TedarikciID = u.TedarikciID Where t.Faks <> 'Null'
Select * from Urunler u inner join Tedarikciler t on t.TedarikciID = u.TedarikciID Where t.Faks is not null