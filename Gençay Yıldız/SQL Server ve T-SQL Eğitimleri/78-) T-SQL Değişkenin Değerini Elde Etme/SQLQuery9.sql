-- Değişkenin Değerini Okuma

--Herhangi bir değişkeni çağırdığımızd assign(=) operatörünün solunda kalıyorsa o değişkenin değerini bize getirmez ama herhangi bir değişkenin direkt ismini çağırırsak o değişkenin değerini getirecektir.

declare @x int 

set @x = 3

Select @x
print @x