-- [Insert Komutu �le Select Sorgusu Sonucu Gelen Verileri Farkl� Tabloya Kaydetme]
Insert OrnekPersoneller Select Adi,SoyAdi from Personeller
-- Bruada dikkat etmemiz gereken nokta; Select sorgusunda d�nen kolon say�s� ile Insert i�lem� yap�lacak tablonun kolon say�s� birbirine e�it olmas� gerekmektedir.

--[Select Sorgusu Sonucu Gelen Verileri Farkl� Bir Tablo Olu�turarak Kaydetme]
Select Adi,SoyAdi,ulke into OrnekPersoneller2 from Personeller
-- Bu y�ntemle primary key ve foreign keyler olu�turulamazlar.

