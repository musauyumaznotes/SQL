-- De�i�kenin De�erini Okuma

--Herhangi bir de�i�keni �a��rd���m�zd assign(=) operat�r�n�n solunda kal�yorsa o de�i�kenin de�erini bize getirmez ama herhangi bir de�i�kenin direkt ismini �a��r�rsak o de�i�kenin de�erini getirecektir.

declare @x int 

set @x = 3

Select @x
print @x