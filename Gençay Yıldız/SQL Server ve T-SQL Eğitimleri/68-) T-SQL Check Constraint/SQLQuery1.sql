-- ===CHECK CONSTRAINT===
-- Bir kolona girilecek olan verinin belirli bir �arta uymas�n� zorunlu tutar.

-- Genel Yap�s�;
-- Add Constraint [Constraint Ad�] Check (�art)


Alter Table OrnekTablo
Add Constraint Kolon2Kontrol Check ((Kolon2 * 5) % 2 = 0)