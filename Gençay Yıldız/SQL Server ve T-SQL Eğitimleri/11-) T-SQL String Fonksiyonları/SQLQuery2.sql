USE Northwind

-- STRING FONKSÝYONLAR

-- LEFT : Soldan(baþtan) belirtilen sayýda karakteri getirir.
Select Left(Adi,2) from Personeller

-- RIFGHT : Saðdan(sondan) belirtilen sayýda karakteri getirir.
Select Right(Adi,3) from Personeller

-- UPPER : Büyük harfe çevirir.
Select UPPER(Adi) from Personeller

-- LOWER : Küçük harfe çevirir.
Select LOWER(Adi) from Personeller

-- SUBSTRING : Belirtilen index'ten itibaren belirtilen sayýda karakteri getir.
Select SUBSTRING(SoyAdi,3,2) from Personeller

-- LTRIM : Soldan boþluklarý keser.
Select '                              Musa'
Select LTRIM('                              Musa')

-- RTIM : Saðdaki boþluklarý keser.
Select 'UYUMAZ                      '
Select RTRIM('UYUMAZ                      ')

-- REVERSE : Tersine çevirir.
Select REVERSE(Adi) from Personeller

-- REPLACE : Belirtilen ifadeyi, belirtilen ifade ile deðiþtirir.
Select REPLACE('Benim Adým Musa','Musa','KürÞad')

-- CHARINDEX : Belirtilen karakterin veri içinde sýra numarasýný verir
Select Adi,CHARINDEX('r',Adi) From Personeller
Select MusteriAdi,CHARINDEX(' ', MusteriAdi) from Musteriler

-- CHARINDEX Örnek
-- Müþteriler tablosunun MusteriAdi kolonundan sadece adlarý çekelim
Select MusteriAdi From Musteriler
Select SUBSTRING(MusteriAdi,0,CHARINDEX(' ',MusteriAdi) ) from Musteriler


-- Müþteriler tablosunun MusteriAdi kolonundan sadece soyadlarý çekelim
Select SUBSTRING(MusteriAdi,CHARINDEX(' ',MusteriAdi),LEN(MusteriAdi)- (CHARINDEX(' ',MusteriAdi)-1)) from Musteriler