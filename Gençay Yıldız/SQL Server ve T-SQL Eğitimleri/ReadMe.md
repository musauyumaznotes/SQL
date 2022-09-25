# 3-) T-SQL Özellikleri ve Use Komutu

- Transact SQL(T-SQL) Dili Özellikleri
- Yorum Satırı -- ifadesidir.
- T-SQL ile veri çekme,kaydetme,güncelleme ve silme gibi işlemlerle veritabanına müdahale edebilir,database oluşturma - silme, tablo oluşturma - silme işlemlerini gerçekleştirebilir ve diğer veritabanı yapıları ve programatik işlemlerde kullanacağımız veritabanı programlama araçlarını oluşturabiliriz.
- T-SQL büyük küçük harf duyarlılığına sahip bir dil değildir.
- musa = Musa = MuSa

# 4-) T-SQL Select Komutu
- Select Komutu  ==> Select istediğimiz verileri bize tablo olarak döndüren bir sorgu çeşididir.
```SQL

USE Northwind
Select 3

Select 'Musa' -- Tablo olarak geliyor
print 'Musa' -- Mesaj olarak geliyor

Select 3,5,7 -- verilen değerleri , ile ayırdığımızda bunalrı farklı kolonlarda bizlere getirecektir.

Select 'Musa','Uyumaz',23

Select * from Personeller 

Select Adi,SoyAdi from Personeller
```

### Alias Atama ==> Kolona nitelik/isim atar
```SQL
Select 3 as Değer

Select 3 Değer

Select 'Musa' Adı, 'Uyumaz' Soyadı

Select Adi isimler,SoyAdi Soyisimler from Personeller
```
### Boşluk Karakteri Olan Alias Atama

```SQL
Select 1453 İstanbulun Fethi

Select 1453 [İstanbulun Fethi]
```

### Boşluk Karakteri Olan Tabloyu Sorgulama
```SQL
Select * From Satis Detaylari

Select * From [Satis Detaylari]
```
### Kolonları Birleştirme
``` SQL
Select Adi,SoyAdi from Personeller
Select Adi + ' ' + SoyAdi [Personel Bilgileri] from Personeller
```

### Farklı Tipte Kolonları Birleştirme
```SQL
Select Adi + ' ' + IseBaslamaTarihi from Personeller -- iki farklı tipteki kolon bu şekilde birleştirilemez

Select Adi + ' ' + Convert(nvarchar,IseBaslamaTarihi) from Personeller --Bu iki kolonu birbirine benzetiyoruz.

Select Adi + ' ' + CAST(IseBaslamaTarihi as nvarchar) from Personeller
```

