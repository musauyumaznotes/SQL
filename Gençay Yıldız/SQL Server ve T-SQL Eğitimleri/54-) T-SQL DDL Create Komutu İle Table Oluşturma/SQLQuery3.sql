-- =Create �le Tablo Olu�turma
Use OrnekVeritabani
Create Table OrnekTablo
(
Kolon1 int,
Kolon2 nvarchar(MAX),
Kolon3 money
)

-- E�er kolon adlar�nda bo�luk varsa k��eli parantez ile belirtilmelidir.
Create Table OrnekTablo2
(
[Kolon 1] int,
[Kolon 2] nvarchar(MAX),
[Kolon 3] money
)