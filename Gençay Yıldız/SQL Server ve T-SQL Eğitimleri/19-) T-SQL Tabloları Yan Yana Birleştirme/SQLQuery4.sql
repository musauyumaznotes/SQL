USE Northwind

-- Tabloları Yan Yana Birleştirme

Select * from Personeller
Select * from Satislar

Select * from Personeller p,Satislar s Where p.PersonelID = s.PersonelID