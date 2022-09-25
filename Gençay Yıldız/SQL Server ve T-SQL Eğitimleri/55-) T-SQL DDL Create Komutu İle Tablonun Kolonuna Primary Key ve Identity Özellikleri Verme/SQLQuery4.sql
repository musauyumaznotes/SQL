-- =Kolona Primary Key ve Identity Özelliði Kazandýrmak
Create Table OrnekTablo3
(
Id int Primary Key Identity(1,1),
Kolon2 nvarchar(MAX),
Kolon3 money
)