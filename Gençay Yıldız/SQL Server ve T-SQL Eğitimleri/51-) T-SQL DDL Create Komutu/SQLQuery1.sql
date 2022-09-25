-- Create Ýle Database Oluþturma
Create Database OrnekVeritabani
-- Bu þekilde bir kullaným varsayýlan ayarlarda veritabaný oluþturacaktýr.


Create Database OrnekVeritabani
On
(
Name = 'GG',
Filename = 'D:\GG.mdf',
Size = 5,
Filegrowth = 3
)
-- Name : Oluþturulacak veritabanýnýn fiziksel ismini belirtiyoruz.
-- Filename : Oluþturulacak veritabaný fiziksel dizinini belirtiyoruz.
-- Size : Veritabanýnýn baþlangýç boyutunu mb cinsinden ayarlýyoruz.
-- Filegrowth : Veritabanýnýn boyutu, baþlangýç boyutunu geçtiði durumda boyutun ne kadar artmasý gerektiðini mb cinsinden belirtiyoruz.