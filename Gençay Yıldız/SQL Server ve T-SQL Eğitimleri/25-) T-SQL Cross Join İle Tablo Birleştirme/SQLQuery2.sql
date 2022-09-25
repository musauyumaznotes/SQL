-- Cross join => Ýki tablo arasýnda kartezyen çarpýmý yapan bir yapýdýr. iki küme arasýndaki elemanlarý tek tek eþleþtirir 
--Cross Join'e(Where) þart bildirilemez
Select COUNT(*) from Personeller
Select COUNT(*) from Bolge

Select p.Adi,b.BolgeID  from Personeller p Cross Join Bolge b