-- Inner Join

-- Ýkidem Fazla Tabloyu Ýliþkisel Birleþtirme
--1997 yýlýndan sonra Nancy'nin satýþ yaptýðý firmalarýn isimleri: (1997 dahil) (Musteriler,Satislar,Personeller)
Select * from Personeller p inner join Satislar s on s.PersonelID = p.PersonelID inner join Musteriler m on m.MusteriID = s.MusteriID Where p.Adi = 'Nancy' and YEAR(s.SatisTarihi) > 1997

-- Limited olan tedarikçilerden alýnmýþ seafood kategorisindeki ürünlerimin toplam satýþ tutarý. (Urunler,Kategoriler,Tedarikçiler)
Select SUM(u.HedefStokDuzeyi * u.BirimFiyati) from Urunler u Inner join Kategoriler k on k.KategoriID = u.KategoriID inner join Tedarikciler t on t.TedarikciID = u.TedarikciID Where t.SirketAdi like '%Ltd.%' and k.KategoriAdi = 'Seafood'

-- Ayný Tabloyu Ýliþkisel Olarak Bileþtirme

-- Personellerimin baðlý olarak çalýþtýðý kiþileri listele (Personeller,Personeller)
Select p1.Adi,p2.Adi from Personeller p1 Inner join Personeller p2 on p1.BagliCalistigiKisi = p2.PersonelID