-- Inner Join

-- Inner Joinde Group By

--Hangi personelim(ad� ve soyad� ile birlikte), toplam ka� adetlik sat�� yapm�� Sat�� adedi 100'den fazla olanlar ve personelin ad�n�n ba� harfi M olan kay�tlar gelsin. (Personeller,Satislar)
Select (p.Adi +' '+ p.SoyAdi),COUNT(s.SatisID) from Personeller p inner join Satislar s on s.PersonelID = p.PersonelID Where p.Adi like 'M%' Group By (p.Adi +' '+ p.SoyAdi) having COUNT(s.SatisID) > 100

-- Seafood kategorisindeki �r�nlerin say�s�? (Urunler Kategoriler)
Select k.KategoriAdi,COUNT(*) from Urunler u inner join Kategoriler k on k.KategoriID = u.KategoriID Where k.KategoriAdi = 'Seafood' Group by k.KategoriAdi 

--Hangi Personelim Toplam Ka� adet Sat�� Yapm��? (Personeller Satislar)
Select p.Adi,COUNT(s.SatisID) from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID Group by p.Adi

-- En �ok sat�� yapan personelim (Personeller Satislar)
Select top 1 p.Adi,COUNT(s.SatisID) from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID Group by p.Adi Order By COUNT(s.SatisID) desc

-- Ad�nda "a" harfi olan personellerin sat�� id'si 10500 den b�y�k olan sat��lar�n�n toplam tutar�n�(miktar * birim fiyat) ve bu sat��lar�n hangi tarihte ger�ekle�ti�ini listele (Personeller Satislar [Satis Detaylari])
Select SUM(sd.Miktar * sd.BirimFiyati),s.SatisTarihi from Personeller p inner join Satislar s on s.PersonelID = p.PersonelID inner join [Satis Detaylari] sd on sd.SatisID = s.SatisID Where p.Adi Like '%a%' And s.SatisID > 10500 Group By s.SatisTarihi 