-- @@Identity Komutu =>�lgili veritaban� i�erisinde yap�lan En son Insert i�leminin identity de�erini bizlere getirir

Insert Kategoriler(KategoriAdi,Tanimi) Values('X','X Kategorisi')

Select @@IDENTITY

Insert Personeller(Adi,SoyAdi) Values('Ela','Elif')
Select @@IDENTITY