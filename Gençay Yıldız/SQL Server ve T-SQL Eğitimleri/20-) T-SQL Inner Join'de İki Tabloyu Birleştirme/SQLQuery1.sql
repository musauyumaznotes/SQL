-- Inner Join => Birden fazla tabloyu ili�kisel kolonlar arac�l���yla birle�tirip tek bir tablo haline getiren bir yap�d�r.

-- Genel Mant�k 
-- Select * from Tablo1 Inner Join Tablo2  on Tablo1.Ili�kiliKolon = Tablo2.Ili�kiliKolon

-- Tablolara alias tan�mlanabilir
-- Select * from Tablo1 t1 Inner Join Tablo2 t2  on t1.Ili�kiliKolon = t2.Ili�kiliKolon

-- �ki Tabloyu �li�kisel Birle�tirme

-- Hangi personel hangi sat��lar� yapm��t�r (Personeller, Sat��lar)
Select * from Personeller p Inner Join  Satislar s On s.PersonelID = p.PersonelID

-- Hangi �r�n hangi kategoride (Urunler, Kategoriler)
Select u.UrunAdi,k.KategoriAdi from Urunler u Inner Join Kategoriler k on k.KategoriID = u.KategoriID

-- Where komutunun kullan�m�

-- Beverages kategorisindeki �r�nlerim (Urunler, Kategoriler)
Select u.UrunAdi from Urunler u Inner Join Kategoriler k on k.KategoriID = u.KategoriID Where k.KategoriAdi = 'Beverages'

-- Beverages kategorisindeki �r�nlerimin say�s� ka�t�r (Urunler, Kategoriler)
Select COUNT(u.UrunAdi) from Urunler u Inner Join Kategoriler k on k.KategoriID = u.KategoriID Where k.KategoriAdi = 'Beverages'

-- Seafood kategorisindeki �r�nlerin listesi (Urunler, Kategoriler)
Select u.UrunAdi from Urunler u Inner Join Kategoriler k on k.KategoriID = u.KategoriID Where k.KategoriAdi = 'Seafood'

-- Hangi sat��� hangi �al��an�m yapm�� (Satislar Personeller)
Select s.SatisID,p.Adi + ' ' + p.SoyAdi  from Satislar s inner join Personeller p on p.PersonelID = s.PersonelID 

-- Faks numaras� null olmayan tedarik�ilerden al�nm�� �r�nler nelerdir? ( Urunler, Tedarik�iler)
Select * from Urunler u inner join Tedarikciler t on t.TedarikciID = u.TedarikciID Where t.Faks <> 'Null'
Select * from Urunler u inner join Tedarikciler t on t.TedarikciID = u.TedarikciID Where t.Faks is not null