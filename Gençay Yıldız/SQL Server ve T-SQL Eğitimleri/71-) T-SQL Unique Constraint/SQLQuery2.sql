-- Constraintler (Kýsýtlayýcýlar)

-- === UNIQUE CONSTRAINT ===
-- Unique constraintin tek amacý, belirttiðimiz kolondaki deðerlerin tekil olmasýný saðlamaktýr.

-- Genel Yapýsý;
-- Add Constraint [Constraint Adý] Unique (Kolon Adý)

Alter Table OrnekTablo
Add Constraint OrnekTabloUniique Unique (Kolon2)

-- "Kolon2" kolonuna unique constraint verilerek tekil hale getirilmiþtir. Bundan sonra iki tane ayný veriden kayýt yapýlamamaktadýr.