-- Batch Kavram� - Go

-- E�er ki bir pencerede birden fazla i�lem yap�yorsak ve bu i�lemler birbirinden ba��ms�z ise bu yap�lar�n birbirinden ba��ms�z oldu�unu derleyiciyede g�stermek istiyorsak go komutunu kullan�yoruz.

Create database OrnekDatabase
go
Use OrnekDatabase
go
Create Table OrnekTablo
(
Id int primary key identity(1,1),
Kolon1 nvarchar(max),
Kolon2 nvarchar(max)
)