-- Exists Fonksiyonu
-- herhangi bir sorgu sonucunda gelen tablonun bo� mu dolu mu oldu�unu ��renmemizi sa�layan fonksiyon
If Exists(Select * From Personeller)
	print 'Dolu'
Else
	print 'Bo�'