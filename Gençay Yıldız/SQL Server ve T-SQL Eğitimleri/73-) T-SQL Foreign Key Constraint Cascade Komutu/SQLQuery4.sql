-- =Cascade
-- Ana tablodaki kay�t silindi�inde ya da g�ncellendi�inde, ili�kili kolondaki kar��l���da otomatik olarak silinir ya da g�ncellenir.
Alter Table Ogrenciler
Add Constraint ForeignKeyOgrenciDers Foreign Key (DersID) References Dersler(DersID)
On Delete Cascade
On Update Cascade
-- Principal Table'da ne yap�l�yorsa referans alan Dependent table'da da ayn� i�lem uygulanmaktad�r.