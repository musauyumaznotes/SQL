-- @@Rowcount Komutu ��lem neticesinde etkilenen eleman say�s�

Delete from PersonellerX Where SoyAdi = 'Gen�ay'
Select @@ROWCOUNT

Select * from Personeller
Select @@ROWCOUNT

Insert PersonellerX(Adi,SoyAdi) Values ('Gen�ay','Y�ld�z'),
									   ('Ahmet','Uslu'),
									   ('Asl�','G�ng�r')