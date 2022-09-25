-- @@Identity Komutu =>Ýlgili veritabaný içerisinde yapýlan En son Insert iþleminin identity deðerini bizlere getirir

Insert Kategoriler(KategoriAdi,Tanimi) Values('X','X Kategorisi')

Select @@IDENTITY

Insert Personeller(Adi,SoyAdi) Values('Ela','Elif')
Select @@IDENTITY