USE Northwind

-- Escape(Ka���) Karakterleri
-- Like sorgular�nda kulland���m�z %, _, [] gibi �zel ifadeler e�er ki verilerimiz i�ersinde ge�iyorsa sorgulama esnas�nda hata ile kar��la�abiliriz. B�yle durumlarda bu ifadelerin �zel ifade olmad���n� escape karakterleri ile belirleyebiliriz.

-- [] Operat�r� �le
-- Escape Komutu �le

Select * from Personeller Where Adi Like '[_]%'


Select * from Personeller Where Adi Like '?_%' Escape '?'