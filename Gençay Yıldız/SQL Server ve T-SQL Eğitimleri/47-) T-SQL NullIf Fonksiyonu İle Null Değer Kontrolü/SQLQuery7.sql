-- NullIf Fonksiyonu ile Null Kontrolü
-- Fonksiyona verilen kolon, ikinici parametre verilen deðere eþit ise o kolonu Null olarak getirir.

Select NullIf(0,2)

Select HedefStokDuzeyi from Urunler
Select AVG(HedefStokDuzeyi) from Urunler

-- Hedef stok düzeyi 0 olmayan ürünlerin ortalamasý kaçtýr?
Select AVG(HedefStokDuzeyi) from Urunler Where HedefStokDuzeyi <> 0

Select AVG(NullIf(HedefStokDuzeyi,0)) from Urunler 