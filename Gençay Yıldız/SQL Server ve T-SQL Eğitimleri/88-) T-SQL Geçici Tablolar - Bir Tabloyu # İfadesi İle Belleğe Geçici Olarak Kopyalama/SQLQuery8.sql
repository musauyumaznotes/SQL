-- #Bir Tabloyu Fiziksel Kopyalama 
Select * Into GeciciPersoneller from Personeller
-- Bu þekilde bir kullanýmda sadece primary key ve foreign key constraintler oluþturulmazlar. Geri kalan herþey birebir fiziksel olarak oluþturulur. 

Select * from GeciciPersoneller