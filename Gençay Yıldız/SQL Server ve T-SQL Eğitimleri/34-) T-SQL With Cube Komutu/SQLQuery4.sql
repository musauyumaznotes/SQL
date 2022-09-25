-- With Cube 
-- Group by ile gruplanm�� veri k�mesinde teker teker toplam al�nmas�n� sa�lar

Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID With Cube

Select KategoriID,UrunID,SUM(TedarikciID) from Urunler Group By KategoriID,UrunID With Cube

-- [Having �art�yla Beraber With Cube]
Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID With Cube Having SUM(Miktar) > 100
