--#Bir Tabloyu # Ýfadeis Ýle Belleðe Geçici Olarak Kopyalama
Select * Into #GeciciPersoneller from Personeller

Select * from #GeciciPersoneller
Insert #GeciciPersoneller(Adi,SoyAdi) Values('Musa','Uyumaz')
Delete from #GeciciPersoneller Where PersonelID = 3
Update #GeciciPersoneller Set Adi ='Hilmi', SoyAdi='Celayir' Where PersonelID = 5


-- Geçici tablo üzerinde her türlü iþlemi yapabiliyoruz.
-- # ile oluþturulan tablo, o an SQL Server'da oturum açmýþ kiþinin sunucu belleðinde oluþur.
-- Sadece oturum açan þahýs kullanabilir.
-- Eðer oturum açan þahýs SQL Server'dan disconnect olursa tablo bellekten silinir.


