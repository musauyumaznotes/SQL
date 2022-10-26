-- Sorgu Sonucu Gelen Verileri Deðiþkenle Elde Etme

declare @adi nvarchar(MAX),@soyadi nvarchar(MAX)
Select @adi = Adi,@soyadi = Soyadi from Personeller Where PersonelID = 1

-- 1. Sorgu sonucu gelen satýr sayýsý bir adet olmalýdýr.
-- 2. Kolonlardaki verilerin tipleri ne ise o verileri temsil edecek deðiþkenlerin tipleride benzer olmalýdýr.

Select @adi,@soyadi