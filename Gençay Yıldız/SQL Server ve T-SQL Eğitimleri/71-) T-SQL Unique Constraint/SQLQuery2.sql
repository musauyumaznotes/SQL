-- Constraintler (K�s�tlay�c�lar)

-- === UNIQUE CONSTRAINT ===
-- Unique constraintin tek amac�, belirtti�imiz kolondaki de�erlerin tekil olmas�n� sa�lamakt�r.

-- Genel Yap�s�;
-- Add Constraint [Constraint Ad�] Unique (Kolon Ad�)

Alter Table OrnekTablo
Add Constraint OrnekTabloUniique Unique (Kolon2)

-- "Kolon2" kolonuna unique constraint verilerek tekil hale getirilmi�tir. Bundan sonra iki tane ayn� veriden kay�t yap�lamamaktad�r.