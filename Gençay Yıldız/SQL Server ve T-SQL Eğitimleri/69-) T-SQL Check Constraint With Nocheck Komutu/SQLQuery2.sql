-- D�KKAT!!!
-- Check constraint olu�turulmadan �nce ilgili tabloda �arta ayk�r� de�erler varsa e�er constraint olu�turulmayacakt�r ! ! !
-- Ancak �nceki kay�tlar� g�rmezden gelip genede Check Constrainti uygulamak istiyorsak "With Nocheck" komutu kullan�lmal�d�r.

-- With Nocheck Komutu
-- �uana kadar olan kay�tlar� g�rmezden gelip, check constrainti uygulatt�r�r.
Alter Table OrnekTablo
With Nocheck Add Constraint Kolon2Kontrol Check((Kolon2 * 5) % 2 = 0)