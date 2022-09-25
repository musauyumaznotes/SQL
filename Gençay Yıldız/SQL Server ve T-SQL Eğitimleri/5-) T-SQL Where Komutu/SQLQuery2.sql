USE Northwind

-- Select Sorgular�nda (Where) �art� Yazmak

Select * from Personeller

-- Personeller tablosunda �ehri London olan verileri listeleyelim
Select * from Personeller Where Sehir = 'London'

-- Personeller tablosunda ba�l� �al��t��� ki�i say�s� 5'ten k���k olanlar� listeleyelim
Select * from Personeller Where BagliCalistigiKisi < 5

-- And Operat�r
-- Personeller tablosunda �ehri London ve �lkesi UK olanlar� listeleyelim.
Select * from Personeller Where Sehir = 'London' and Ulke ='UK'

-- Or Operat�r�
-- Personeller tablosunda UnvanEki 'Mr.' olan veya �ehri Seattle olan t�m personelleri listeleyelim
Select * from Personeller Where UnvanEki ='Mr.' Or Sehir = 'Seattle'

-- Kar���k �rnekler
-- Ad� Robert Soyad� King olan personelin t�m bilgilerini �ek.
Select * from Personeller Where Adi = 'Robert' and SoyAdi ='King'

-- PersonelID'si 5 olan personeli getir.
Select * from Personeller Where PersonelID = 5

-- PersonelID'si 5'ten b�y�k olan personelleri getir.
Select * from Personeller Where PersonelID >= 5

-- <> E�it De�ilse
-- = E�itse
-- <= K���k ve E�itse
-- >= B�y�k ve E�itse

-- Fonksiyon Sonu�lar�n� �art Olarak Kullanmak
-- 1993 y�l�nda i�e ba�layanlar� listele
Select * from Personeller Where YEAR(IseBaslamaTarihi) = 1993

-- 1992 y�l�ndan sonra i�e ba�layanlar� listele.
Select * from Personeller Where YEAR(IseBaslamaTarihi) > 1992

-- Do�um g�n�,ay�n 29 olmayan personelleri listeleyelim
Select * from Personeller Where DAY(DogumTarihi) <> 29

-- Do�um y�l� 1950 ile 1965 y�k-llar� aras�nda olan personelleri getirelim
Select * from Personeller Where YEAR(DogumTarihi) > 1950 and YEAR(DogumTarihi) < 1965

-- Ya�ad��� �ehrin London, Tacoma ve Kirkland olan personellerin ad�n� listeleyelim
Select Adi from Personeller Where Sehir = 'London' or Sehir = 'Tacoma' or Sehir = 'Kirkland'