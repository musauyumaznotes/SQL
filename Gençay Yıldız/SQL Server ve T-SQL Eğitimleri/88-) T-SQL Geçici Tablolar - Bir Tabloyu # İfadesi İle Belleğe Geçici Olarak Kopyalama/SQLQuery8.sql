-- #Bir Tabloyu Fiziksel Kopyalama 
Select * Into GeciciPersoneller from Personeller
-- Bu �ekilde bir kullan�mda sadece primary key ve foreign key constraintler olu�turulmazlar. Geri kalan her�ey birebir fiziksel olarak olu�turulur. 

Select * from GeciciPersoneller