-- ===DEFAULT CONSTRAINT===
-- Default Constraint sayesinde kolona bir de�er girilmedi�i taktirde varsay�lan olarak ne girilmesi gerekti�ini belirtebiliyoruz.

-- Genel Yap�s�;
-- Add Constraint [Constraint Ad�] Default 'Varsay�lan De�er' For [Kolon Ad�]

Create Table OrnekTablo
(
Id int primary key identity(1,1),
Kolon1 nvarchar(max),
Kolon2 int
)

Alter Table OrnekTablo
Add Constraint Kolon1Constraint Default 'Bo�' For Kolon1

Alter Table OrnekTablo
Add Constraint Kolon2Constraint Default -1 For Kolon2

Insert OrnekTablo(Kolon2) Values(0)
Insert OrnekTablo(Kolon1) Values('�rnek Bir De�er')

Select * From OrnekTablo