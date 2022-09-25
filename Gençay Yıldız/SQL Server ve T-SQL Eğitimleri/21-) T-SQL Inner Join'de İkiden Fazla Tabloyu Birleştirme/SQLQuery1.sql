-- Inner Join

-- �kidem Fazla Tabloyu �li�kisel Birle�tirme
--1997 y�l�ndan sonra Nancy'nin sat�� yapt��� firmalar�n isimleri: (1997 dahil) (Musteriler,Satislar,Personeller)
Select * from Personeller p inner join Satislar s on s.PersonelID = p.PersonelID inner join Musteriler m on m.MusteriID = s.MusteriID Where p.Adi = 'Nancy' and YEAR(s.SatisTarihi) > 1997

-- Limited olan tedarik�ilerden al�nm�� seafood kategorisindeki �r�nlerimin toplam sat�� tutar�. (Urunler,Kategoriler,Tedarik�iler)
Select SUM(u.HedefStokDuzeyi * u.BirimFiyati) from Urunler u Inner join Kategoriler k on k.KategoriID = u.KategoriID inner join Tedarikciler t on t.TedarikciID = u.TedarikciID Where t.SirketAdi like '%Ltd.%' and k.KategoriAdi = 'Seafood'

-- Ayn� Tabloyu �li�kisel Olarak Bile�tirme

-- Personellerimin ba�l� olarak �al��t��� ki�ileri listele (Personeller,Personeller)
Select p1.Adi,p2.Adi from Personeller p1 Inner join Personeller p2 on p1.BagliCalistigiKisi = p2.PersonelID