# 3-) T-SQL Özellikleri ve Use Komutu

- Transact SQL(T-SQL) Dili Özellikleri
- Yorum Satırı -- ifadesidir.
- T-SQL ile veri çekme,kaydetme,güncelleme ve silme gibi işlemlerle veritabanına müdahale edebilir,database oluşturma - silme, tablo oluşturma - silme işlemlerini gerçekleştirebilir ve diğer veritabanı yapıları ve programatik işlemlerde kullanacağımız veritabanı programlama araçlarını oluşturabiliriz.
- T-SQL büyük küçük harf duyarlılığına sahip bir dil değildir.
- musa = Musa = MuSa

# 4-) T-SQL Select Komutu
- ### Select Komutu  ==> Select istediğimiz verileri bize tablo olarak döndüren bir sorgu çeşididir.
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
- ### Select Sorgularında (Where) Şartı Yazmak
```SQL
Select * from Personeller

-- Personeller tablosunda şehri London olan verileri listeleyelim
Select * from Personeller Where Sehir = 'London'

-- Personeller tablosunda bağlı çalıştığı kişi sayısı 5'ten küçük olanları listeleyelim
Select * from Personeller Where BagliCalistigiKisi < 5
```
- ### And Operatör
```SQL
-- Personeller tablosunda şehri London ve ülkesi UK olanları listeleyelim.
Select * from Personeller Where Sehir = 'London' and Ulke ='UK'
```
- ### Or Operatörü
```SQL
-- Personeller tablosunda UnvanEki 'Mr.' olan veya şehri Seattle olan tüm personelleri listeleyelim
Select * from Personeller Where UnvanEki ='Mr.' Or Sehir = 'Seattle'
```
- ### Karşık Örnekler
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
- [>=] Büyük ve Eşitse

- ### Fonksiyon Sonuçlarını Şart Olarak Kullanmak
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

# 6-) T-SQL Where Komutunda Between Komutunun Kullanımı
- ### Between Komutu =>Eğer ki where şartı belirli bir değer aralığını belirtecekse yani şartımız belirli bir değer aralığı olacaksa between komutunu kullanıp daha pratik bir şekilde şartımızı oluşturabiliriz.

```SQL
-- Doğum yılı 1950 ile 1965 yılları arasında olan personelleri getirelim.
Select * from Personeller Where YEAR(DogumTarihi) between 1950 and 1965
```
# 7-) T-SQL Where Komutunda In Komutunun Kullanımı
- ### In Komutu => Or komutuyla belirttiğimiz şartları biz In komutu ile daha pratik bir şekilde gerçekleştirmekteyiz

```SQL
-- Yaşadığı şehrin London,Tacoma ve Kirkland olan personellerin adını listeleyelim.
Select Adi from Personeller Where Sehir In('London','Tacoma','Kirkland')
```
# 8-) T-SQL Like Sorguları
- ### Like Sorguları =>Kolonlar içindeki Verilere belirli şartlarımızı koyabiliriz.

- ### %(Genel Önemli Değil) Operatörü => Aradığımız kriterin dışındakileri ifade edebiliyoruz.
```SQL
-- İsminin baş harfi j olan personellerin adını ve soyadını yazdıralım.
Select Adi,SoyAdi from Personeller Where Adi Like 'j%' -- => ilk harfi j olan gerisi önemli/mühim olmayan 

-- İsminin son harfi y olan personellerin adını ve soyadını yazdıralım.
Select Adi,SoyAdi from Personeller Where Adi Like '%y'

-- İsminin son üç harfi ert olan personeli getirelim
Select * from Personeller Where Adi Like '%ert'

-- İsminin ilk harfi r son harfi t olan personeli getirelim.
Select Adi,SoyAdi from Personeller Where Adi Like 'r%t' 
-- Gereksiz bir kullanım.
Select Adi,SoyAdi from Personeller Where Adi Like 'r%' and Adi Like '%t'

-- İsminde an geçen personelin adını yazdıralım.
Select Adi From Personeller Where Adi Like '%an%'

-- isminin baş harfi n olan ve içerisinde an geçen personeli getirelim.
Select * From Personeller Where Adi Like 'n%an%'
-- Gereksiz bir kullanım
Select * From Personeller Where Adi Like 'n%' and Adi Like '%an%'
```
- ### _ (Özel Önemli Değil) Operatörü => Bu operatörü kullandığımız karakter o anki karakterin önemli olmadığını belirtir.
```SQL
-- İsminin ilk harfi a,ikinci harfi fark etmez ve üçüncü harfi d olan personeli getirelim.
Select * From Personeller Where Adi Like 'a_d%' -- => ilk harfi a ikinci harfi fark etmez üçüncü harfi d olan ve bundan sonrası fark etmeyen değer.

-- İsminin ilk harfi m,ikinci-üçüncü-dördüncü fark etmez ve beşinci harfi a olan personeli getirelim.
Select * From Personeller Where Adi Like 'm___a%'
```
- ### [] (ya da operatörü)
```SQL
-- İsminin ilk harfi n ya da m ya da r olan personelleri getirelim.
Select * from Personeller Where Adi Like '[nmr]%'

-- İsminin içerisinde a ya da i geçen personelleri getirelim.
Select * from Personeller Where Adi Like '%[ai]%'
```
- ### [*-*] (Alfabetik Arasında) Operatörü *=> belirli harfleri belirlemekte
```SQL
-- İsminin baş harfi a ile k arasında alfabetik sıraya göre herahngi bir harf olan personellerin adını yazdıralım
Select Adi From Personeller Where Adi Like '[a-k]%'
```
- ### [ ^* ] (Değil) Operatörü
```SQL
-- İsminin baş harfi a olmayan personelleri getirelim.
Select * from Personeller Where Adi Like '[^a]%'

-- İsminin baş harfi an olmayan personelleri getirelim.
Select * from Personeller Where Adi Like '[^an]%'
```
# 9-) T-SQL Like Sorgularında Escape(Kaçış) Karakterleri
- ### Escape(Kaçış) Karakterleri
- ### Like sorgularında kullandığımız %, _ , [ ] gibi özel ifadeler eğer ki verilerimiz içersinde geçiyorsa sorgulama esnasında hata ile karşılaşabiliriz. Böyle durumlarda bu ifadelerin özel ifade olmadığını escape karakterleri ile belirleyebiliriz.

- ### [] Operatörü İle
- ### Escape Komutu İle
```SQL
Select * from Personeller Where Adi Like '[_]%'
Select * from Personeller Where Adi Like '?_%' Escape '?'
```
# 10-) T-SQL Aggregate Fonksiyonları
- ### Aggregate Fonksiyonlar =>Bir tablodaki tüm veriler tüm satırlarda işlem yapmamızı sağlayan fonksionlardır

- ### AVG : Ortalama alır => Sayısal veri tiplerinde çalışır
```SQL
Select AVG(PersonelID) from Personeller
```

- ### MAX : En büyük değeri bulur. => Sayısal veri tiplerinde çalışır
```SQL
Select MAX(PersonelID) from Personeller
```

- ### MIN : En küçük değeri bulur. => Sayısal veri tiplerinde çalışır
```SQL
Select MIN(PersonelID) from Personeller
```

- ### COUNT : Toplam sayısını verir
```SQL
Select COUNT(*) from Personeller
Select COUNT(Adi) from Personeller
```

- ### SUM: Toplamını Verir  => Sayısal veri tiplerinde çalışır
```SQL
Select SUM(NakliyeUcreti) from Satislar
```



