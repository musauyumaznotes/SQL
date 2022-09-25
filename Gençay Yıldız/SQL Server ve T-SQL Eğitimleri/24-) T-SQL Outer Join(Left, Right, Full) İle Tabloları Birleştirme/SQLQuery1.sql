-- Outer Join

-- Inner Join'de e�le�en kay�tlar getiriliyordu. Outer Join'de ise e�le�meyen kay�tlarda getirilmektedir.

-- Left Join
-- Join ifadesinin solundaki tablodan t�m kay�tlar� getirir. Sa��ndaki tablodan e�le�enleri yan yana e�le�meyenleri null olarak getirir.
Select * from Oyuncular o Left Outer Join Filmler f on o.FilmId = f.FilmId
Select * from Filmler f Left Outer Join Oyuncular o on o.FilmId = f.FilmId
-- veya
Select * from Oyuncular o Left Join Filmler f on o.FilmId = f.FilmId
Select * from Filmler f Left Join Oyuncular o on o.FilmId = f.FilmId

-- Right Join
-- joinin sa��ndaki tablonun tamam�n� getirecek, solundakinden e�le�enleri ayn� sat�rda e�le�meyenleri de null olarak getirecek.
Select * from Oyuncular o Right Outer Join Filmler f on o.FilmId = f.FilmId
Select * from Filmler f Right Outer Join Oyuncular o on o.FilmId = f.FilmId
--- veya
Select * from Oyuncular o Right Join Filmler f on o.FilmId = f.FilmId

-- Full Join
-- Joinin iki taraf�ndaki tablolardan e�le�en e�le�meyen hepsini getirir.
Select * from Oyuncular o Full outer Join Filmler f on f.FilmId = o.FilmId
-- veya
Select * from Oyuncular o Full Join Filmler f on f.FilmId = o.FilmId