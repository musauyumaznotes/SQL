-- Inner Join

-- Inner Joinde Group By

--Hangi personelim(adý ve soyadý ile birlikte), toplam kaç adetlik satýþ yapmýþ Satýþ adedi 100'den fazla olanlar ve personelin adýnýn baþ harfi M olan kayýtlar gelsin. (Personeller,Satislar)
Select (p.Adi +' '+ p.SoyAdi),COUNT(s.SatisID) from Personeller p inner join Satislar s on s.PersonelID = p.PersonelID Where p.Adi like 'M%' Group By (p.Adi +' '+ p.SoyAdi) having COUNT(s.SatisID) > 100

-- Seafood kategorisindeki ürünlerin sayýsý? (Urunler Kategoriler)
Select k.KategoriAdi,COUNT(*) from Urunler u inner join Kategoriler k on k.KategoriID = u.KategoriID Where k.KategoriAdi = 'Seafood' Group by k.KategoriAdi 

--Hangi Personelim Toplam Kaç adet Satýþ Yapmýþ? (Personeller Satislar)
Select p.Adi,COUNT(s.SatisID) from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID Group by p.Adi

-- En çok satýþ yapan personelim (Personeller Satislar)
Select top 1 p.Adi,COUNT(s.SatisID) from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID Group by p.Adi Order By COUNT(s.SatisID) desc

-- Adýnda "a" harfi olan personellerin satýþ id'si 10500 den büyük olan satýþlarýnýn toplam tutarýný(miktar * birim fiyat) ve bu satýþlarýn hangi tarihte gerçekleþtiðini listele (Personeller Satislar [Satis Detaylari])
Select SUM(sd.Miktar * sd.BirimFiyati),s.SatisTarihi from Personeller p inner join Satislar s on s.PersonelID = p.PersonelID inner join [Satis Detaylari] sd on sd.SatisID = s.SatisID Where p.Adi Like '%a%' And s.SatisID > 10500 Group By s.SatisTarihi 