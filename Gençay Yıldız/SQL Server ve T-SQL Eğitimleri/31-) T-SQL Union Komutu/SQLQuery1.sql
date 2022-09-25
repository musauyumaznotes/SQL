-- Union | Union All

-- Union
-- Birden fazla select sorgusu sonucunu tek seferde alt alta göstermemizi saðlar

Select Adi,SoyAdi from Personeller
Select MusteriAdi,Musteriunvani from Musteriler


Select Adi,SoyAdi from Personeller
Union
Select MusteriAdi,Musteriunvani from Musteriler

-- 2'den fazla
Select Adi,SoyAdi from Personeller
Union
Select MusteriAdi,Musteriunvani from Musteriler
Union
Select SevkAdi,SevkAdresi from Satislar

-- Joinler yan yana Union alt alta tablolarý birleþtirir. Joinlerde belirli(iliþkisel) bir klolon üzerinden birleþtirme yapýlýrken, Union'da böyle bir durum yoktur.Union serseri bir þekilde/kabataslak birleþtirir

-- Dikkat etmemiz gereken koþullar;
-- Union sorgusunun sonucunda oluþan tablonun kolon isimnleri, üstteki sorgunun kolon isimlerinden oluþturulur.
-- Üstteki sorgudan kaç kolon çekilmiþse alttaki sorgudan da o kadar çekilmek zorundadýrç
-- Üstteki sorgudan çekilen kolonlarýn tipleriyle, alttaki sorgudan çekilen kolonlarýn tipleri uyumlu olmalýdýr.
-- Union tekrarlý kayýtlarý getirmez

-- Union'da kullanýlan tablolara kolon eklenebilir. Dikkat etmemiz gereken nokta, yukarýdaki kurallar çerçevesinde aþaðýya da yukarýya da ayný sayýda kolonlarýn eklenmesi gerekmektedir
Select Adi,SoyAdi,'Personel' from Personeller
Union
Select MusteriAdi,Musteriunvani,'Müþteri' from Musteriler
