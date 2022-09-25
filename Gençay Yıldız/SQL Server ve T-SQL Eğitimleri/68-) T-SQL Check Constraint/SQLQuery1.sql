-- ===CHECK CONSTRAINT===
-- Bir kolona girilecek olan verinin belirli bir þarta uymasýný zorunlu tutar.

-- Genel Yapýsý;
-- Add Constraint [Constraint Adý] Check (Þart)


Alter Table OrnekTablo
Add Constraint Kolon2Kontrol Check ((Kolon2 * 5) % 2 = 0)