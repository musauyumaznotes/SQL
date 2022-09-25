USE Northwind

-- STRING FONKS�YONLAR

-- LEFT : Soldan(ba�tan) belirtilen say�da karakteri getirir.
Select Left(Adi,2) from Personeller

-- RIFGHT : Sa�dan(sondan) belirtilen say�da karakteri getirir.
Select Right(Adi,3) from Personeller

-- UPPER : B�y�k harfe �evirir.
Select UPPER(Adi) from Personeller

-- LOWER : K���k harfe �evirir.
Select LOWER(Adi) from Personeller

-- SUBSTRING : Belirtilen index'ten itibaren belirtilen say�da karakteri getir.
Select SUBSTRING(SoyAdi,3,2) from Personeller

-- LTRIM : Soldan bo�luklar� keser.
Select '                              Musa'
Select LTRIM('                              Musa')

-- RTIM : Sa�daki bo�luklar� keser.
Select 'UYUMAZ                      '
Select RTRIM('UYUMAZ                      ')

-- REVERSE : Tersine �evirir.
Select REVERSE(Adi) from Personeller

-- REPLACE : Belirtilen ifadeyi, belirtilen ifade ile de�i�tirir.
Select REPLACE('Benim Ad�m Musa','Musa','K�r�ad')

-- CHARINDEX : Belirtilen karakterin veri i�inde s�ra numaras�n� verir
Select Adi,CHARINDEX('r',Adi) From Personeller
Select MusteriAdi,CHARINDEX(' ', MusteriAdi) from Musteriler

-- CHARINDEX �rnek
-- M��teriler tablosunun MusteriAdi kolonundan sadece adlar� �ekelim
Select MusteriAdi From Musteriler
Select SUBSTRING(MusteriAdi,0,CHARINDEX(' ',MusteriAdi) ) from Musteriler


-- M��teriler tablosunun MusteriAdi kolonundan sadece soyadlar� �ekelim
Select SUBSTRING(MusteriAdi,CHARINDEX(' ',MusteriAdi),LEN(MusteriAdi)- (CHARINDEX(' ',MusteriAdi)-1)) from Musteriler