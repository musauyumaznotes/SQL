##  3-) T-SQL Özellikleri ve Use Komutu

- Transact SQL(T-SQL) Dili Özellikleri
- Yorum Satırı -- ifadesidir.
- T-SQL ile veri çekme,kaydetme,güncelleme ve silme gibi işlemlerle veritabanına müdahale edebilir,database oluşturma - silme, tablo oluşturma - silme işlemlerini gerçekleştirebilir ve diğer veritabanı yapıları ve programatik işlemlerde kullanacağımız veritabanı programlama araçlarını oluşturabiliriz.
- T-SQL büyük küçük harf duyarlılığına sahip bir dil değildir.
- musa = Musa = MuSa

## 4-) T-SQL Select Komutu
```SQL
USE Northwind

-- Select Komutu  ==> Select istedi�imiz verileri bize tablo olarak d�nd�ren bir sorgu �e�ididir.
Select 3

Select 'Musa' -- Tablo olarak geliyor
print 'Musa' -- Mesaj olarak geliyor

Select 3,5,7 -- verilen de�erleri , ile ay�rd���m�zda bunalr� farkl� kolonlarda bizlere getirecektir.

Select 'Musa','Uyumaz',23

Select * from Personeller 

Select Adi,SoyAdi from Personeller

-- Alias Atama ==> Kolona nitelik/isim atar
Select 3 as De�er

Select 3 De�er

Select 'Musa' Ad�, 'Uyumaz' Soyad�

Select Adi �simler,SoyAdi Soyisimler from Personeller

-- Bo�luk Karakteri Olan Alias Atama
Select 1453 �stanbulun Fethi

Select 1453 [�stanbulun Fethi]

-- Bo�luk Karakteri Olan Tabloyu Sorgulama
Select * From Satis Detaylari

Select * From [Satis Detaylari]

-- Kolonlar� Birle�tirme
Select Adi,SoyAdi from Personeller
Select Adi + ' ' + SoyAdi [Personel Bilgileri] from Personeller

-- Farkl� Tipte Kolonlar� Birle�tirme
Select Adi + ' ' + IseBaslamaTarihi from Personeller -- iki farkl� tipteki kolon bu �ekilde birle�tirilemez

Select Adi + ' ' + Convert(nvarchar,IseBaslamaTarihi) from Personeller --Bu iki kolonu birbirine benzetiyoruz.

Select Adi + ' ' + CAST(IseBaslamaTarihi as nvarchar) from Personeller
```
