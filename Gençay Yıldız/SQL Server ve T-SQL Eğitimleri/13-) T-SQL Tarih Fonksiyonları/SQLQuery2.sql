USE Northwind

-- Tarih Fonksiyonlarý

-- GETDATE : bu günün tarihini verir.
Select GETDATE()

-- DATEADD : Verilen tarihe verildiði kadar gün,ay,yýl ekler
Select DATEADD(DAY,999,GETDATE())
Select DATEADD(MONTH,999,GETDATE())
Select DATEADD(YEAR,999,GETDATE())

-- DATEDIFF : Ýki tarih arasýnda günü,ayý, veya yýlý hesaplar
Select DATEDIFF(DAY,'02.14.1999',GETDATE())
Select DATEDIFF(MONTH,'02.14.1999',GETDATE())
Select DATEDIFF(YEAR,'02.14.1999',GETDATE())

-- DATEPART : Verilen tarihin haftanýn,ayýn yahut yýlýn kaçýncý günü olduðunu hesaplar.
Select DATEPART(DW,GETDATE())
Select DATEPART(MONTH,GETDATE())
Select DATEPART(DAY,GETDATE())