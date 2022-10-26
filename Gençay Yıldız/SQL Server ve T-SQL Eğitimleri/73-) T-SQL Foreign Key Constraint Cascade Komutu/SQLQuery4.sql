-- =Cascade
-- Ana tablodaki kayıt silindiğinde ya da güncellendiğinde, ilişkili kolondaki karşılığıda otomatik olarak silinir ya da güncellenir.
Alter Table Ogrenciler
Add Constraint ForeignKeyOgrenciDers Foreign Key (DersID) References Dersler(DersID)
On Delete Cascade
On Update Cascade
-- Principal Table'da ne yapılıyorsa referans alan Dependent table'da da aynı işlem uygulanmaktadır.