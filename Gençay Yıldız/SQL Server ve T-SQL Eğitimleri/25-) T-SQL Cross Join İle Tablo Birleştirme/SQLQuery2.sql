-- Cross join => �ki tablo aras�nda kartezyen �arp�m� yapan bir yap�d�r. iki k�me aras�ndaki elemanlar� tek tek e�le�tirir 
--Cross Join'e(Where) �art bildirilemez
Select COUNT(*) from Personeller
Select COUNT(*) from Bolge

Select p.Adi,b.BolgeID  from Personeller p Cross Join Bolge b