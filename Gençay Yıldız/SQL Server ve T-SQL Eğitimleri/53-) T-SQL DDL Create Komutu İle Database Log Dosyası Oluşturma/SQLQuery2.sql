-- =Create Ýle Log Dosyasýyla Birlikte Database Oluþturma
Create Database OrnekVeritabani
On
(
Name = 'GG',
Filename = 'D:\GG.mdf',
Size = 5,
Filegrowth = 3
)
Log 
On
(
Name = 'GG_LOG',
Filename = 'D:\GG.ldf',
Size = 5,
Filegrowth = 3
)