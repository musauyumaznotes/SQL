-- [Insert Komutu Ýle Select Sorgusu Sonucu Gelen Verileri Farklý Tabloya Kaydetme]
Insert OrnekPersoneller Select Adi,SoyAdi from Personeller
-- Bruada dikkat etmemiz gereken nokta; Select sorgusunda dönen kolon sayýsý ile Insert iþlemþ yapýlacak tablonun kolon sayýsý birbirine eþit olmasý gerekmektedir.

--[Select Sorgusu Sonucu Gelen Verileri Farklý Bir Tablo Oluþturarak Kaydetme]
Select Adi,SoyAdi,ulke into OrnekPersoneller2 from Personeller
-- Bu yöntemle primary key ve foreign keyler oluþturulamazlar.

