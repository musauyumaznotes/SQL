-- #Bir Tabloyu ## �fadesi �le Belle�e Ge�ici Olarak Kopyalama

Select * Into ##GeciciPersoneller2 from Personeller

Select * from ##GeciciPersoneller2
Insert ##GeciciPersoneller2(Adi,SoyAdi) Values('Musa','Uyumaz')
Delete from ##GeciciPersoneller2 Where PersonelID = 3
Update ##GeciciPersoneller2 Set Adi ='Hilmi', SoyAdi='Celayir' Where PersonelID = 5

-- ## ile olu�turulan tablo, o an SQL Serverda oturum a�m�� ki�inin sunucu belle�inde olu�ur.
-- Bu tabloyu oturum a�an �ah�s ve onun SQL Server'�na d��ar�dan ula�an 3. �ah�slar kullanabilir.
-- E�er oturum a�an �ah�s SQL Server'dan disconnect olursa bu tablo bellekten silinir.
-- Di�er b�t�n �zellikleri # ile olu�turulan tablo ile ayn�d�r.