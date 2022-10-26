-- =Set Default
-- Ana tablodaki kayýt silindiðinde ya da güncellendiðinde, iliþkili kolondaki karþýlýðýna o kolonun default deðeri basýlýr. Bu default deðer dediðimiz default tipte bir constraint'tir Bunu kendimiz Oluþturabiliriz.

Alter Table Ogrenciler
Add Constraint DefaultOgrenciler Default 1 For DersID

Alter Table Ogrenciler 
Add Constraint ForeignKeyOgrenciDers Foreign Key (DersID) References Dersler (DersID)
On Delete Set Default
On Update Set Default

-- Bu ayarlar verilmediði taktirde "no action" özelliði geçerli olacaktýr.