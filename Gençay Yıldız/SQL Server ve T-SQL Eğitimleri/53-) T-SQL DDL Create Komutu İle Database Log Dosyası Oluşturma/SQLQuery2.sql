-- =Create �le Log Dosyas�yla Birlikte Database Olu�turma
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