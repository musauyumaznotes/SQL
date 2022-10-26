-- Deðiþkenin Deðerini Okuma

--Herhangi bir deðiþkeni çaðýrdýðýmýzd assign(=) operatörünün solunda kalýyorsa o deðiþkenin deðerini bize getirmez ama herhangi bir deðiþkenin direkt ismini çaðýrýrsak o deðiþkenin deðerini getirecektir.

declare @x int 

set @x = 3

Select @x
print @x