-- =Create Ýle Tablo Oluþturma
Use OrnekVeritabani
Create Table OrnekTablo
(
Kolon1 int,
Kolon2 nvarchar(MAX),
Kolon3 money
)

-- Eðer kolon adlarýnda boþluk varsa köþeli parantez ile belirtilmelidir.
Create Table OrnekTablo2
(
[Kolon 1] int,
[Kolon 2] nvarchar(MAX),
[Kolon 3] money
)