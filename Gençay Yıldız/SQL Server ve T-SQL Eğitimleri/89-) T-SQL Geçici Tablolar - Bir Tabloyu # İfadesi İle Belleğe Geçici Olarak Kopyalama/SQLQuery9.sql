--#Bir Tabloyu # �fadeis �le Belle�e Ge�ici Olarak Kopyalama
Select * Into #GeciciPersoneller from Personeller

Select * from #GeciciPersoneller
Insert #GeciciPersoneller(Adi,SoyAdi) Values('Musa','Uyumaz')
Delete from #GeciciPersoneller Where PersonelID = 3
Update #GeciciPersoneller Set Adi ='Hilmi', SoyAdi='Celayir' Where PersonelID = 5


-- Ge�ici tablo �zerinde her t�rl� i�lemi yapabiliyoruz.
-- # ile olu�turulan tablo, o an SQL Server'da oturum a�m�� ki�inin sunucu belle�inde olu�ur.
-- Sadece oturum a�an �ah�s kullanabilir.
-- E�er oturum a�an �ah�s SQL Server'dan disconnect olursa tablo bellekten silinir.


