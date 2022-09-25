-- NullIf Fonksiyonu ile Null Kontrol�
-- Fonksiyona verilen kolon, ikinici parametre verilen de�ere e�it ise o kolonu Null olarak getirir.

Select NullIf(0,2)

Select HedefStokDuzeyi from Urunler
Select AVG(HedefStokDuzeyi) from Urunler

-- Hedef stok d�zeyi 0 olmayan �r�nlerin ortalamas� ka�t�r?
Select AVG(HedefStokDuzeyi) from Urunler Where HedefStokDuzeyi <> 0

Select AVG(NullIf(HedefStokDuzeyi,0)) from Urunler 