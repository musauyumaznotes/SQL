-- DÝKKAT!!!
-- Check constraint oluþturulmadan önce ilgili tabloda þarta aykýrý deðerler varsa eðer constraint oluþturulmayacaktýr ! ! !
-- Ancak önceki kayýtlarý görmezden gelip genede Check Constrainti uygulamak istiyorsak "With Nocheck" komutu kullanýlmalýdýr.

-- With Nocheck Komutu
-- Þuana kadar olan kayýtlarý görmezden gelip, check constrainti uygulattýrýr.
Alter Table OrnekTablo
With Nocheck Add Constraint Kolon2Kontrol Check((Kolon2 * 5) % 2 = 0)