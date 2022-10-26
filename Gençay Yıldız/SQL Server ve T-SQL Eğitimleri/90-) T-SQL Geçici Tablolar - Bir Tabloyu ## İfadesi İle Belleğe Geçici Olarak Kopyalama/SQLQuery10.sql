-- #Bir Tabloyu ## Ýfadesi Ýle Belleðe Geçici Olarak Kopyalama

Select * Into ##GeciciPersoneller2 from Personeller

Select * from ##GeciciPersoneller2
Insert ##GeciciPersoneller2(Adi,SoyAdi) Values('Musa','Uyumaz')
Delete from ##GeciciPersoneller2 Where PersonelID = 3
Update ##GeciciPersoneller2 Set Adi ='Hilmi', SoyAdi='Celayir' Where PersonelID = 5

-- ## ile oluþturulan tablo, o an SQL Serverda oturum açmýþ kiþinin sunucu belleðinde oluþur.
-- Bu tabloyu oturum açan þahýs ve onun SQL Server'ýna dýþarýdan ulaþan 3. þahýslar kullanabilir.
-- Eðer oturum açan þahýs SQL Server'dan disconnect olursa bu tablo bellekten silinir.
-- Diðer bütün özellikleri # ile oluþturulan tablo ile aynýdýr.