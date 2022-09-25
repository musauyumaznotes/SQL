-- With Komutu

With PersonelSatis(id,adi,soyadi,satisid)
as
(
Select p.PersonelID,Adi,SoyAdi,SatisID from Personeller p inner join Satislar s on p.PersonelID = s.PersonelID
)
Select * from PersonelSatis ps inner join [Satis Detaylari] sd on sd.SatisID = ps.satisid