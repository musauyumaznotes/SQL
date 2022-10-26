-- =Cascade
-- Ana tablodaki kayýt silindiðinde ya da güncellendiðinde, iliþkili kolondaki karþýlýðýda otomatik olarak silinir ya da güncellenir.
Alter Table Ogrenciler
Add Constraint ForeignKeyOgrenciDers Foreign Key (DersID) References Dersler(DersID)
On Delete Cascade
On Update Cascade
-- Principal Table'da ne yapýlýyorsa referans alan Dependent table'da da ayný iþlem uygulanmaktadýr.