-- Sorgu Sonucu Gelen Verileri De�i�kenle Elde Etme

declare @adi nvarchar(MAX),@soyadi nvarchar(MAX)
Select @adi = Adi,@soyadi = Soyadi from Personeller Where PersonelID = 1

-- 1. Sorgu sonucu gelen sat�r say�s� bir adet olmal�d�r.
-- 2. Kolonlardaki verilerin tipleri ne ise o verileri temsil edecek de�i�kenlerin tipleride benzer olmal�d�r.

Select @adi,@soyadi