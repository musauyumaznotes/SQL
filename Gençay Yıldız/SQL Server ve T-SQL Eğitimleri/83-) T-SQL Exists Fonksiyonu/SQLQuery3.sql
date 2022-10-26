-- Exists Fonksiyonu
-- herhangi bir sorgu sonucunda gelen tablonun boþ mu dolu mu olduðunu öðrenmemizi saðlayan fonksiyon
If Exists(Select * From Personeller)
	print 'Dolu'
Else
	print 'Boþ'