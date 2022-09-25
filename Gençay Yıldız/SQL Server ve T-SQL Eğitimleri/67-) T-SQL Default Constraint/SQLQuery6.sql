-- ===DEFAULT CONSTRAINT===
-- Default Constraint sayesinde kolona bir deðer girilmediði taktirde varsayýlan olarak ne girilmesi gerektiðini belirtebiliyoruz.

-- Genel Yapýsý;
-- Add Constraint [Constraint Adý] Default 'Varsayýlan Deðer' For [Kolon Adý]

Create Table OrnekTablo
(
Id int primary key identity(1,1),
Kolon1 nvarchar(max),
Kolon2 int
)

Alter Table OrnekTablo
Add Constraint Kolon1Constraint Default 'Boþ' For Kolon1

Alter Table OrnekTablo
Add Constraint Kolon2Constraint Default -1 For Kolon2

Insert OrnekTablo(Kolon2) Values(0)
Insert OrnekTablo(Kolon1) Values('Örnek Bir Deðer')

Select * From OrnekTablo