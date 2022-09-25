-- With Rollup
-- Group By ile grupanmýþ veri kümesinde ara toplam alýnmasýný saðlar.

Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID With Rollup

Select KategoriID,UrunID,SUM(TedarikciID) from Urunler Group By KategoriID,UrunID With Rollup

-- [Having Þartýyla Beraber With Rollup]
Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID With Rollup Having SUM(Miktar) > 100