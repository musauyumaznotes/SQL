-- Create �le Database Olu�turma
Create Database OrnekVeritabani
-- Bu �ekilde bir kullan�m varsay�lan ayarlarda veritaban� olu�turacakt�r.


Create Database OrnekVeritabani
On
(
Name = 'GG',
Filename = 'D:\GG.mdf',
Size = 5,
Filegrowth = 3
)
-- Name : Olu�turulacak veritaban�n�n fiziksel ismini belirtiyoruz.
-- Filename : Olu�turulacak veritaban� fiziksel dizinini belirtiyoruz.
-- Size : Veritaban�n�n ba�lang�� boyutunu mb cinsinden ayarl�yoruz.
-- Filegrowth : Veritaban�n�n boyutu, ba�lang�� boyutunu ge�ti�i durumda boyutun ne kadar artmas� gerekti�ini mb cinsinden belirtiyoruz.