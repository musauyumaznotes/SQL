***
# [Bu notları Gençay Yıldız hocamın sayesinde izlediğim bu playlistten öğrendim.](https://www.youtube.com/playlist?list=PLQVXoXFVVtp2RjHt5teaBOLUcKbq2Ilbo)  Herkesin izlemesini tavsiye ederim. Mükemmel bir anlatım. Böyle mükemmel bir içerikli [Türkçe kaynağı](https://www.youtube.com/c/Gen%C3%A7ayY%C4%B1ld%C4%B1z) hiçbir yerde bulamazsınız.
***

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
# 11-) T-SQL String Fonksiyonları
- ### STRING FONKSİYONLAR
- ### LEFT : Soldan(baştan) belirtilen sayıda karakteri getirir.
```SQL
Select Left(Adi,2) from Personeller
```

- ### RIGHT : Sağdan(sondan) belirtilen sayıda karakteri getirir.
```SQL
Select Right(Adi,3) from Personeller
```

- ### UPPER : Büyük harfe çevirir.
```SQL
Select UPPER(Adi) from Personeller
```

- ### LOWER : Küçük harfe çevirir.
```SQL
Select LOWER(Adi) from Personeller
```

- ### SUBSTRING : Belirtilen index'ten itibaren belirtilen sayıda karakteri getir.
```SQL
Select SUBSTRING(SoyAdi,3,2) from Personeller
```

- ### LTRIM : Soldan boşlukları keser.
```SQL
Select '                              Musa'
Select LTRIM('                              Musa')
```

- ### RTIM : Sağdaki boşlukları keser.
```SQL
Select 'UYUMAZ                      '
Select RTRIM('UYUMAZ                      ')
```

- ### REVERSE : Tersine çevirir.
```SQL
Select REVERSE(Adi) from Personeller
```

- ### REPLACE : Belirtilen ifadeyi, belirtilen ifade ile değiştirir.
```SQL
Select REPLACE('Benim Adım Musa','Musa','KürŞad')
```

- ### CHARINDEX : Belirtilen karakterin veri içinde sıra numarasını verir
```SQL
Select Adi,CHARINDEX('r',Adi) From Personeller
Select MusteriAdi,CHARINDEX(' ', MusteriAdi) from Musteriler
```

- ### CHARINDEX Örnek
```SQL
-- Müşteriler tablosunun MusteriAdi kolonundan sadece adları çekelim
Select MusteriAdi From Musteriler
Select SUBSTRING(MusteriAdi,0,CHARINDEX(' ',MusteriAdi) ) from Musteriler

-- Müşteriler tablosunun MusteriAdi kolonundan sadece soyadları çekelim
Select SUBSTRING(MusteriAdi,CHARINDEX(' ',MusteriAdi),LEN(MusteriAdi)- (CHARINDEX(' ',MusteriAdi)-1)) from Musteriler
```
# 12-) T-SQL Sayısal Değer İşlemleri
- ### Sayısal Değer İşlemleri

```SQL
Select 3 + 2
Select 3 * 3
Select 4 / 2
Select 9 - 7
```

- ### PI : Pi sayısını verir
```SQL
Select PI()
```

- ### SIN : Sinüs alır.
```SQL
Select SIN(90)
```

- ### POWER : Üs alır
```SQL
Select POWER(2,3)
```

- ### ABS : Mutlak değer alır.
```SQL
Select ABS(-12)
```

- ### RAND : 0 - 1 arasında rastgele sayı üretir.
```SQL
Select RAND()
```

- ### FLOOR : Yuvarlama Yapar
```SQL
Select FLOOR(RAND()*100)
SELECT CEILING(RAND()*100)
```

# 13-) T-SQL Tarih Fonksiyonları
USE Northwind

- ### Tarih Fonksiyonları

- ### GETDATE : bu günün tarihini verir.
```SQL
Select GETDATE()
```

- ### DATEADD : Verilen tarihe verildiði kadar gün,ay,yýl ekler
```SQL
Select DATEADD(DAY,999,GETDATE())
Select DATEADD(MONTH,999,GETDATE())
Select DATEADD(YEAR,999,GETDATE())
```

- ### DATEDIFF : Ýki tarih arasýnda günü,ayý, veya yýlý hesaplar
```SQL
Select DATEDIFF(DAY,'02.14.1999',GETDATE())
Select DATEDIFF(MONTH,'02.14.1999',GETDATE())
Select DATEDIFF(YEAR,'02.14.1999',GETDATE())
```

- ### DATEPART : Verilen tarihin haftanýn,ayýn yahut yýlýn kaçýncý günü olduðunu hesaplar.
```SQL
Select DATEPART(DW,GETDATE())
Select DATEPART(MONTH,GETDATE())
Select DATEPART(DAY,GETDATE())
```
# 14-) T-SQL Top Komutu
- ### Top Komutu : Select komutu neticesinde elde ettiğimiz tablodan ilk kaç kayıtın gösterilmesini istiyorsak TOP komutunu kullanırız
```SQL
Select Top 3 * from Personeller
```

# 15-) T-SQL Distinct Komutu
- ### Distinct Komutu : Bir kolondaki benzer olan verileri teke indirmemizi sağlayan bir komuttur.
```SQL
Select Distinct Sehir from Personeller
```
# 16-) T-SQL Group By İşlemi
- ### Group By => Eğer ki select sorgusunda bir normal kolon bir de ayriyetten aggregate fonksiyonu çağrılıyorsa normal olan kolonu gruplamanız gerekecektir.
```SQL
Select * from Urunler 

Select KategoriID , COUNT (*) from Urunler Group By KategoriID -- => KategoriID'deki benzer olan verileri gruplayıp/paketleyip bu verilere karşılık gelen eleman sayısını sonuçlarını karşılarına yazarsam hgaliyle istediğim sonucu elde etmiş olacağım.

Select PersonelID,SUM(NakliyeUcreti) from Satislar Group By PersonelID
```
- ### Group By İşleminde Where Şartı Kullanma
```SQL
Select * from Urunler

Select KategoriID,COUNT(*) from Urunler Where KategoriID > 5 Group By KategoriID 

Select PersonelID,COUNT(*) from Satislar  Where PersonelID < 4 Group By PersonelID

Select PersonelID,SUM(NakliyeUcreti) from Satislar Group By PersonelID
```

# 18-) T-SQL Having Komutu
- ### Group By İşleminde Having komutunu Kullanarak Şart Oluşturma  => Where noraml kolonlar üzerinde şart uygulayacaksak kullandığımız şart komutudur lakin Having Aggregate fonksiyonu üzerinde şart uygulayacaksak kullandığımız bir komuttur.
```SQL
Select * from Urunler

Select KategoriID,COUNT(*) from Urunler Where KategoriID > 5 Group by KategoriID Having COUNT(*) > 6

Select PersonelID,COUNT(*) from Satislar Where PersonelID < 4 Group By PersonelID

Select PersonelID,SUM(NakliyeUcreti) from Satislar Group By PersonelID
```

# 19-) T-SQL Tabloları Yan Yana Birleştirme
- ### Tabloları Yan Yana Birleştirme
```SQL
Select * from Personeller
Select * from Satislar

Select * from Personeller p,Satislar s Where p.PersonelID = s.PersonelID
```

# 20-) T-SQL Inner Join'de İki Tabloyu Birleştirme
- ### Inner Join => Birden fazla tabloyu ilişkisel kolonlar aracılığıyla birleştirip tek bir tablo haline getiren bir yapıdır.

- ### Genel Mantık 
- Select * from Tablo1 Inner Join Tablo2  on Tablo1.IlişkiliKolon = Tablo2.IlişkiliKolon

- ### Tablolara alias tanımlanabilir
- Select * from Tablo1 t1 Inner Join Tablo2 t2  on t1.IlişkiliKolon = t2.IlişkiliKolon

- ### İki Tabloyu İlişkisel Birleştirme
```SQL
-- Hangi personel hangi satışları yapmıştır (Personeller, Satışlar)
Select * from Personeller p 
Inner Join  Satislar s On s.PersonelID = p.PersonelID

-- Hangi ürün hangi kategoride (Urunler, Kategoriler)
Select u.UrunAdi,k.KategoriAdi from Urunler u 
Inner Join Kategoriler k on k.KategoriID = u.KategoriID
```

- ### Where komutunun kullanımı
```SQL
-- Beverages kategorisindeki ürünlerim (Urunler, Kategoriler)
Select u.UrunAdi from Urunler u 
Inner Join Kategoriler k on k.KategoriID = u.KategoriID 
Where k.KategoriAdi = 'Beverages'

-- Beverages kategorisindeki ürünlerimin sayısı kaçtır (Urunler, Kategoriler)
Select COUNT(u.UrunAdi) from Urunler u 
Inner Join Kategoriler k on k.KategoriID = u.KategoriID 
Where k.KategoriAdi = 'Beverages'

-- Seafood kategorisindeki ürünlerin listesi (Urunler, Kategoriler)
Select u.UrunAdi from Urunler u 
Inner Join Kategoriler k on k.KategoriID = u.KategoriID 
Where k.KategoriAdi = 'Seafood'

-- Hangi satışı hangi çalışanım yapmış (Satislar Personeller)
Select s.SatisID,p.Adi + ' ' + p.SoyAdi  from Satislar s 
inner join Personeller p on p.PersonelID = s.PersonelID 

-- Faks numarası null olmayan tedarikçilerden alınmış ürünler nelerdir? ( Urunler, Tedarikçiler)
Select * from Urunler u 
inner join Tedarikciler t on t.TedarikciID = u.TedarikciID Where t.Faks <> 'Null'
Select * from Urunler u 
inner join Tedarikciler t on t.TedarikciID = u.TedarikciID Where t.Faks is not null
```

# 21-) T-SQL Inner Join'de İkiden Fazla Tabloyu Birleştirme

-### Inner Join

- ### İkidem Fazla Tabloyu İlişkisel Birleştirme
```SQL
-- 1997 yılından sonra Nancy'nin satış yaptığı firmaların isimleri: (1997 dahil) (Musteriler,Satislar,Personeller)
Select * from Personeller p 
inner join Satislar s on s.PersonelID = p.PersonelID 
inner join Musteriler m on m.MusteriID = s.MusteriID 
Where p.Adi = 'Nancy' and YEAR(s.SatisTarihi) > 1997

-- Limited olan tedarikçilerden alınmış seafood kategorisindeki ürünlerimin toplam satış tutarı. (Urunler,Kategoriler,Tedarikçiler)
Select SUM(u.HedefStokDuzeyi * u.BirimFiyati) from Urunler u 
Inner join Kategoriler k on k.KategoriID = u.KategoriID 
inner join Tedarikciler t on t.TedarikciID = u.TedarikciID 
Where t.SirketAdi like '%Ltd.%' and k.KategoriAdi = 'Seafood'
```

- ### Aynı Tabloyu İlişkisel Olarak Bileştirme
```SQL
-- Personellerimin bağlı olarak çalıştığı kişileri listele (Personeller,Personeller)
Select p1.Adi,p2.Adi from Personeller p1 
Inner join Personeller p2 on p1.BagliCalistigiKisi = p2.PersonelID
```

# 23-) T-SQL Inner Join'de Group By İşlemi

- ### Inner Join

- ### Inner Joinde Group By
```SQL
--Hangi personelim(adı ve soyadı ile birlikte), toplam kaç adetlik satış yapmış Satış adedi 100'den fazla olanlar ve personelin adının baş harfi M olan kayıtlar gelsin. (Personeller,Satislar)
Select (p.Adi +' '+ p.SoyAdi),COUNT(s.SatisID) from Personeller p 
inner join Satislar s on s.PersonelID = p.PersonelID 
Where p.Adi like 'M%' 
Group By (p.Adi +' '+ p.SoyAdi) having COUNT(s.SatisID) > 100

-- Seafood kategorisindeki ürünlerin sayısı? (Urunler Kategoriler)
Select k.KategoriAdi,COUNT(*) from Urunler u 
inner join Kategoriler k on k.KategoriID = u.KategoriID
Where k.KategoriAdi = 'Seafood' 
Group by k.KategoriAdi 

-- Hangi Personelim Toplam Kaç adet Satış Yapmış? (Personeller Satislar)
Select p.Adi,COUNT(s.SatisID) from Personeller p 
inner join Satislar s on p.PersonelID = s.PersonelID 
Group by p.Adi

-- En çok satış yapan personelim (Personeller Satislar)
Select top 1 p.Adi,COUNT(s.SatisID) from Personeller p 
inner join Satislar s on p.PersonelID = s.PersonelID 
Group by p.Adi Order By COUNT(s.SatisID) desc

-- Adında "a" harfi olan personellerin satış id'si 10500 den büyük olan satışlarının toplam tutarını(miktar * birim fiyat) ve bu satışların hangi tarihte gerçekleştiğini listele (Personeller Satislar [Satis Detaylari])
Select SUM(sd.Miktar * sd.BirimFiyati),s.SatisTarihi from Personeller p 
inner join Satislar s on s.PersonelID = p.PersonelID 
inner join [Satis Detaylari] sd on sd.SatisID = s.SatisID 
Where p.Adi Like '%a%' And s.SatisID > 10500 
Group By s.SatisTarihi 
```

# 24-) T-SQL Outer Join(Left, Right, Full) İle Tabloları Birleştirme

- ### Outer Join

- Inner Join'de eşleşen kayıtlar getiriliyordu. Outer Join'de ise eşleşmeyen kayıtlarda getirilmektedir.

- ### Left Join
- Join ifadesinin solundaki tablodan tüm kayıtları getirir. Sağındaki tablodan eşleşenleri yan yana eşleşmeyenleri null olarak getirir.
```SQL
Select * from Oyuncular o Left Outer Join Filmler f on o.FilmId = f.FilmId
Select * from Filmler f Left Outer Join Oyuncular o on o.FilmId = f.FilmId
```
- ### veya
```SQL
Select * from Oyuncular o Left Join Filmler f on o.FilmId = f.FilmId
Select * from Filmler f Left Join Oyuncular o on o.FilmId = f.FilmId
```

- ### Right Join
- joinin sağındaki tablonun tamamını getirecek, solundakinden eşleşenleri aynı satırda eşleşmeyenleri de null olarak getirecek.
```SQL
Select * from Oyuncular o Right Outer Join Filmler f on o.FilmId = f.FilmId
Select * from Filmler f Right Outer Join Oyuncular o on o.FilmId = f.FilmId
```
- ### veya
```SQL
Select * from Oyuncular o Right Join Filmler f on o.FilmId = f.FilmId
```

- ### Full Join
- Joinin iki tarafındaki tablolardan eşleşen eşleşmeyen hepsini getirir.
```SQL
Select * from Oyuncular o Full outer Join Filmler f on f.FilmId = o.FilmId
```
- ### veya
```SQL
Select * from Oyuncular o Full Join Filmler f on f.FilmId = o.FilmId
```

# 25-) T-SQL Cross Join İle Tablo Birleştirme
- ### Cross join => İki tablo arasında kartezyen çarpımı yapan bir yapıdır. iki küme arasındaki elemanları tek tek eşleştirir 
- ### Cross Join'e(Where) şart bildirilemez
```SQL
Select COUNT(*) from Personeller
Select COUNT(*) from Bolge

Select p.Adi,b.BolgeID  from Personeller p Cross Join Bolge b
```

# 26-) T-SQL DML Giriş
- ### DML (Data Manipulation Language)

- ### Select, Insert, Update, Delete
- ### Select ...
- ### Insert ...
- ### Update ...
- ### Delete ...

- ### Select 
```SQL
Select * from Personeller
```

# 27-) T-SQL DML Insert Komutu 1
- ### DML (Data Manipulation Language)

- ### Insert 
- ### Insert [Tablo Adı](Kolonlar) Values(Değerler)
```SQL
Insert Personeller(Adi,SoyAdi) Values('Musa','Uyumaz')
Insert Personeller Values('Uyumaz','Musa','Yazılım Veritabanı Geliştirici','YM','14.02.1999',GETDATE(),'Eskişehir','Eskişehir','İç Anadolu','26600','Türkiye','02221111111',null,null,null,null)
```

- ### [Dikkat Edilmesi Gerekenler!!!]
- ### Into Komutu ile Yazılabilir
```SQL
Insert Into Personeller(Adi,SoyAdi) Values('Musa','Uyumaz')
```
- ### Kolonun kabul ettiği veri tipi ve karakter uzunluğunda kayıt yapılmalıdır.
- ### Not Null olan kolonlara boş bırakılamayacaklarından dolayı mutlaka değer gönderilmelidir.
```SQL
Insert Personeller(Adi,SoyAdi,Unvan,UnvanEki) Values('','','a','b')
```
- ### Otomatik artan(identity) kolonlara değer gönderilmez.
- ### Tablodaki seçilen yahut bütün kolonlara değer gönderileceği belirtilip, gönderilmezse hata verecektir.
```SQL
Insert Into Personeller(Adi,SoyAdi) Values('Musa')
Insert Into Personeller Values('Musa')
```

- ### [Pratik Kullanım]
```SQL
Insert Musteriler(MusteriAdi,Adres) Values('Hilmi','Çorum')
Insert Musteriler(MusteriAdi,Adres) Values('Necati','Çankırı')
Insert Musteriler(MusteriAdi,Adres) Values('Rıfkı','Yozgat')

Insert Musteriler(MusteriAdi,Adres) Values('Hilmi','Çorum'),
										                      ('Necati','Çankırı'),
										                      ('Rıfkı','Yozgat')
```

# 28-) T-SQL DML Insert Komutu 2
- ### [Insert Komutu İle Select Sorgusu Sonucu Gelen Verileri Farklı Tabloya Kaydetme]
```SQL
Insert OrnekPersoneller Select Adi,SoyAdi from Personeller
```
- ### Bruada dikkat etmemiz gereken nokta; Select sorgusunda dönen kolon sayısı ile Insert işlemş yapılacak tablonun kolon sayısı birbirine eşit olması gerekmektedir.

- ### [Select Sorgusu Sonucu Gelen Verileri Farklı Bir Tablo Oluşturarak Kaydetme]
```SQL
Select Adi,SoyAdi,ulke into OrnekPersoneller2 from Personeller
```
- ### Bu yöntemle primary key ve foreign keyler oluşturulamazlar.

# 29-) T-SQL DML Update Komutu
- ### DML (Data Manipulation Language)

- ### Update
- ### Update [Tablo Adı] Set [Kolon Adı] = Değer
```SQL
Update OrnekPersoneller Set Adi = 'Mehmet'
```
- ### [Update Sorgusuna Where Þartý Yazmak]
```SQL
Update OrnekPersoneller Set Adi = 'Mehmet' Where Adi = 'Nancy'
Update OrnekPersoneller Set Adi = 'Ayþe' Where SoyAdi = 'Davolio'
```

- ### [Update Sorgusunda Join Yapýlarýný Kullanarak Birden Fazla Tabloda Güncelleme Yapmak]
```SQL
Update Urunler Set UrunAdi = k.KategoriAdi from Urunler u Inner Join Kategoriler k on u.KategoriID = k.KategoriID
```

- ### [Update Sorgusunda Subquery Ýle Güncelleme Yapmak]
```SQL
Update Urunler Set UrunAdi = (Select Adi from Personeller Where PersonelID = 3)
```

- ### [Update Sorgusunda Top Keywordü Ýle Güncelleme Yapmak]
```SQL
Update Top(30) urunler Set UrunAdi = 'x' 
```

# 30-) T-SQL DML Delete Komutu
- ### DML (Data Manipulation Language)

- ### Delete
- ### Delete From [Tablo Adı]
```SQL
Delete from Urunler
```

- ### [Delete Sorgusunda Where Şartı Yazmak]
```SQL
Delete From Urunler Where KategoriID < 3
```

- ### [Dikkat Edilmesi Gerekenler!!!]
- ### Delete sorgusuyla tablo içerisindeki tüm verileri silmeniz identity kolonunu sıfırlamayacaktır. Silme işleminden sonra ilk eklenen veride kalındığı yerden id değeri verilecektir.

# 31-) T-SQL Union Komutu
- ### Union | Union All

- ### Union
- ### Birden fazla select sorgusu sonucunu tek seferde alt alta göstermemizi sağlar

```SQL
Select Adi,SoyAdi from Personeller
Select MusteriAdi,Musteriunvani from Musteriler

Select Adi,SoyAdi from Personeller
Union
Select MusteriAdi,Musteriunvani from Musteriler
```

```SQL
-- 2'den fazla
Select Adi,SoyAdi from Personeller
Union
Select MusteriAdi,Musteriunvani from Musteriler
Union
Select SevkAdi,SevkAdresi from Satislar
```

- ### Joinler yan yana Union alt alta tabloları birleştirir. Joinlerde belirli(ilişkisel) bir klolon üzerinden birleştirme yapılırken, Union'da böyle bir durum yoktur.Union serseri bir şekilde/kabataslak birleştirir

- ### Dikkat etmemiz gereken koşullar;
- ### Union sorgusunun sonucunda oluşan tablonun kolon isimnleri, üstteki sorgunun kolon isimlerinden oluşturulur.
- ### Üstteki sorgudan kaç kolon çekilmişse alttaki sorgudan da o kadar çekilmek zorundadırç
- ### Üstteki sorgudan çekilen kolonların tipleriyle, alttaki sorgudan çekilen kolonların tipleri uyumlu olmalıdır.
- ### Union tekrarlı kayıtları getirmez

- ### Union'da kullanılan tablolara kolon eklenebilir. Dikkat etmemiz gereken nokta, yukarıdaki kurallar çerçevesinde aşağıya da yukarıya da aynı sayıda kolonların eklenmesi gerekmektedir
```SQL
Select Adi,SoyAdi,'Personel' from Personeller
Union
Select MusteriAdi,Musteriunvani,'Müşteri' from Musteriler
```

# 32-) T-SQL Union All Komutu
- ### Union All
- ### Union tekrarlý kayýtlarý getirmez. Tekrarlý kayýtlarý getirmek için Union All komutu kullanýlmaktadýr
```SQL
Select Adi,SoyAdi from Personeller
Union All
Select Adi,SoyAdi from Personeller
```

