-- @@Rowcount Komutu Ýþlem neticesinde etkilenen eleman sayýsý

Delete from PersonellerX Where SoyAdi = 'Gençay'
Select @@ROWCOUNT

Select * from Personeller
Select @@ROWCOUNT

Insert PersonellerX(Adi,SoyAdi) Values ('Gençay','Yýldýz'),
									   ('Ahmet','Uslu'),
									   ('Aslý','Güngör')