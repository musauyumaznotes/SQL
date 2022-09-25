-- With Rollup
-- Group By ile grupanm�� veri k�mesinde ara toplam al�nmas�n� sa�lar.

Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID With Rollup

Select KategoriID,UrunID,SUM(TedarikciID) from Urunler Group By KategoriID,UrunID With Rollup

-- [Having �art�yla Beraber With Rollup]
Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID With Rollup Having SUM(Miktar) > 100