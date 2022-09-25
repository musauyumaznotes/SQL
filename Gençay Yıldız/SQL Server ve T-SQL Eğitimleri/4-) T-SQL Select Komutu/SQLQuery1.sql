USE Northwind

-- Select Komutu  ==> Select istediðimiz verileri bize tablo olarak döndüren bir sorgu çeþididir.
Select 3

Select 'Musa' -- Tablo olarak geliyor
print 'Musa' -- Mesaj olarak geliyor

Select 3,5,7 -- verilen deðerleri , ile ayýrdýðýmýzda bunalrý farklý kolonlarda bizlere getirecektir.

Select 'Musa','Uyumaz',23

Select * from Personeller 

Select Adi,SoyAdi from Personeller

-- Alias Atama ==> Kolona nitelik/isim atar
Select 3 as Deðer

Select 3 Deðer

Select 'Musa' Adý, 'Uyumaz' Soyadý

Select Adi Ýsimler,SoyAdi Soyisimler from Personeller

-- Boþluk Karakteri Olan Alias Atama
Select 1453 Ýstanbulun Fethi

Select 1453 [Ýstanbulun Fethi]

-- Boþluk Karakteri Olan Tabloyu Sorgulama
Select * From Satis Detaylari

Select * From [Satis Detaylari]

-- Kolonlarý Birleþtirme
Select Adi,SoyAdi from Personeller
Select Adi + ' ' + SoyAdi [Personel Bilgileri] from Personeller

-- Farklý Tipte Kolonlarý Birleþtirme
Select Adi + ' ' + IseBaslamaTarihi from Personeller -- iki farklý tipteki kolon bu þekilde birleþtirilemez

Select Adi + ' ' + Convert(nvarchar,IseBaslamaTarihi) from Personeller --Bu iki kolonu birbirine benzetiyoruz.

Select Adi + ' ' + CAST(IseBaslamaTarihi as nvarchar) from Personeller