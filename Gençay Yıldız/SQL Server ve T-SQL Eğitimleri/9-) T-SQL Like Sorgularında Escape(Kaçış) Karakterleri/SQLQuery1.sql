USE Northwind

-- Escape(Kaçýþ) Karakterleri
-- Like sorgularýnda kullandýðýmýz %, _, [] gibi özel ifadeler eðer ki verilerimiz içersinde geçiyorsa sorgulama esnasýnda hata ile karþýlaþabiliriz. Böyle durumlarda bu ifadelerin özel ifade olmadýðýný escape karakterleri ile belirleyebiliriz.

-- [] Operatörü Ýle
-- Escape Komutu Ýle

Select * from Personeller Where Adi Like '[_]%'


Select * from Personeller Where Adi Like '?_%' Escape '?'