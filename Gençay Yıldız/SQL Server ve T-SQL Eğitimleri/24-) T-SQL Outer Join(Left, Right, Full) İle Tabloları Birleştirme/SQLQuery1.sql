-- Outer Join

-- Inner Join'de eþleþen kayýtlar getiriliyordu. Outer Join'de ise eþleþmeyen kayýtlarda getirilmektedir.

-- Left Join
-- Join ifadesinin solundaki tablodan tüm kayýtlarý getirir. Saðýndaki tablodan eþleþenleri yan yana eþleþmeyenleri null olarak getirir.
Select * from Oyuncular o Left Outer Join Filmler f on o.FilmId = f.FilmId
Select * from Filmler f Left Outer Join Oyuncular o on o.FilmId = f.FilmId
-- veya
Select * from Oyuncular o Left Join Filmler f on o.FilmId = f.FilmId
Select * from Filmler f Left Join Oyuncular o on o.FilmId = f.FilmId

-- Right Join
-- joinin saðýndaki tablonun tamamýný getirecek, solundakinden eþleþenleri ayný satýrda eþleþmeyenleri de null olarak getirecek.
Select * from Oyuncular o Right Outer Join Filmler f on o.FilmId = f.FilmId
Select * from Filmler f Right Outer Join Oyuncular o on o.FilmId = f.FilmId
--- veya
Select * from Oyuncular o Right Join Filmler f on o.FilmId = f.FilmId

-- Full Join
-- Joinin iki tarafýndaki tablolardan eþleþen eþleþmeyen hepsini getirir.
Select * from Oyuncular o Full outer Join Filmler f on f.FilmId = o.FilmId
-- veya
Select * from Oyuncular o Full Join Filmler f on f.FilmId = o.FilmId