-- =Set Default
-- Ana tablodaki kay�t silindi�inde ya da g�ncellendi�inde, ili�kili kolondaki kar��l���na o kolonun default de�eri bas�l�r. Bu default de�er dedi�imiz default tipte bir constraint'tir Bunu kendimiz Olu�turabiliriz.

Alter Table Ogrenciler
Add Constraint DefaultOgrenciler Default 1 For DersID

Alter Table Ogrenciler 
Add Constraint ForeignKeyOgrenciDers Foreign Key (DersID) References Dersler (DersID)
On Delete Set Default
On Update Set Default

-- Bu ayarlar verilmedi�i taktirde "no action" �zelli�i ge�erli olacakt�r.