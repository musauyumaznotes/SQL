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

- ### Alias Atama ==> Kolona nitelik/isim atar
```SQL
Select 3 as Değer
Select 3 Değer
Select 'Musa' Adı, 'Uyumaz' Soyadı
Select Adi isimler,SoyAdi Soyisimler from Personeller
```
- ### Boşluk Karakteri Olan Alias Atama

```SQL
Select 1453 İstanbulun Fethi
Select 1453 [İstanbulun Fethi]
```

- ### Boşluk Karakteri Olan Tabloyu Sorgulama
```SQL
Select * From Satis Detaylari
Select * From [Satis Detaylari]
```
- ### Kolonları Birleştirme
``` SQL
Select Adi,SoyAdi from Personeller
Select Adi + ' ' + SoyAdi [Personel Bilgileri] from Personeller
```

- ### Farklı Tipte Kolonları Birleştirme
```SQL
Select Adi + ' ' + IseBaslamaTarihi from Personeller -- iki farklı tipteki kolon bu şekilde birleştirilemez
Select Adi + ' ' + Convert(nvarchar,IseBaslamaTarihi) from Personeller --Bu iki kolonu birbirine benzetiyoruz.
Select Adi + ' ' + CAST(IseBaslamaTarihi as nvarchar) from Personeller
```
# 5-) T-SQL Where Komutu
- Select Sorgularında (Where) Şartı Yazmak
```SQL
Select * from Personeller

-- Personeller tablosunda şehri London olan verileri listeleyelim
Select * from Personeller Where Sehir = 'London'

-- Personeller tablosunda bağlı çalıştığı kişi sayısı 5'ten küçük olanları listeleyelim
Select * from Personeller Where BagliCalistigiKisi < 5
```
-### And Operatör
```SQL
-- Personeller tablosunda şehri London ve ülkesi UK olanları listeleyelim.
Select * from Personeller Where Sehir = 'London' and Ulke ='UK'
```
-### Or Operatörü
```SQL
-- Personeller tablosunda UnvanEki 'Mr.' olan veya şehri Seattle olan tüm personelleri listeleyelim
Select * from Personeller Where UnvanEki ='Mr.' Or Sehir = 'Seattle'
```
-### Karşık Örnekler
```SQL
-- Adı Robert Soyadı King olan personelin tüm bilgilerini çek.
Select * from Personeller Where Adi = 'Robert' and SoyAdi ='King'

-- PersonelID'si 5 olan personeli getir.
Select * from Personeller Where PersonelID = 5

-- PersonelID'si 5'ten büyük olan personelleri getir.
Select * from Personeller Where PersonelID >= 5
```
- <> Eşit Değilse
- = Eşitse
- <= Küçük ve Eşitse
- >= Büyük ve Eşitse

-### Fonksiyon Sonuçlarını Şart Olarak Kullanmak
```SQL
-- 1993 yılında işe başlayanları listele
Select * from Personeller Where YEAR(IseBaslamaTarihi) = 1993

-- 1992 yılından sonra işe başlayanları listele.
Select * from Personeller Where YEAR(IseBaslamaTarihi) > 1992

-- Doğum günü,ayın 29 olmayan personelleri listeleyelim
Select * from Personeller Where DAY(DogumTarihi) <> 29

-- Doğum yılı 1950 ile 1965 yık-lları arasında olan personelleri getirelim
Select * from Personeller Where YEAR(DogumTarihi) > 1950 and YEAR(DogumTarihi) < 1965

-- Yaşadığı şehrin London, Tacoma ve Kirkland olan personellerin adını listeleyelim
Select Adi from Personeller Where Sehir = 'London' or Sehir = 'Tacoma' or Sehir = 'Kirkland'
```







