-- #Bir Tabloyu Fiziksel Kopyalama 
Select * Into GeciciPersoneller from Personeller
-- Bu şekilde bir kullanımda sadece primary key ve foreign key constraintler oluşturulmazlar. Geri kalan herşey birebir fiziksel olarak oluşturulur. 

Select * from GeciciPersoneller