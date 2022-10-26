-- Batch Kavramý - Go

-- Eðer ki bir pencerede birden fazla iþlem yapýyorsak ve bu iþlemler birbirinden baðýmsýz ise bu yapýlarýn birbirinden baðýmsýz olduðunu derleyiciyede göstermek istiyorsak go komutunu kullanýyoruz.

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