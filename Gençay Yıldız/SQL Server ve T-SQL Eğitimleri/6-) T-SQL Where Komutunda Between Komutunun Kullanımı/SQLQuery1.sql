-- Between Komutu =>Eðer ki where þartý belirli bir deðer aralýðýný belirtecekse yani þartýmýz belirli bir deðer aralýðý olacaksa between komutunu kullanýp daha pratik bir þekilde þartýmýzý oluþturabiliriz.

-- Doðum yýlý 1950 ile 1965 yýllarý arasýnda olan personelleri getirelim.
Select * from Personeller Where YEAR(DogumTarihi) between 1950 and 1965