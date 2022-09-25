-- Subquery (�� ��e Sorgular)
--Dikkat etmemiz gereken tek �art sub/i�erideki olan sorgunun geriye d�nece�i sat�r sadece bir tane olmak zorunda
Select s.SatisID,s.SatisTarihi from Personeller p inner join Satislar s on s.PersonelID = p.PersonelID Where Adi = 'Nancy'

Select SatisID,SatisTarihi from Satislar Where PersonelID = (Select PersonelID from Personeller Where Adi = 'Nancy')

Select * from Personeller Where Adi =(Select Adi from Personeller p Where UnvanEki = 'Dr.')