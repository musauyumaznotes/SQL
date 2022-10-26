-- =Set Null
-- Ana tablodaki kayýt silindiðinde ya da güncellendiðinde iliþkili kolondaki karþýlýðýna "Null" deðer basýlýr
Alter Table Ogrenciler
Add Constraint ForeignKeyOgrenciDers Foreign Key (DersID) References Dersler(DersID) 
On Delete Set Null
On Update Set Null