-- =Set Null
-- Ana tablodaki kay�t silindi�inde ya da g�ncellendi�inde ili�kili kolondaki kar��l���na "Null" de�er bas�l�r
Alter Table Ogrenciler
Add Constraint ForeignKeyOgrenciDers Foreign Key (DersID) References Dersler(DersID) 
On Delete Set Null
On Update Set Null