-- Between Komutu =>E�er ki where �art� belirli bir de�er aral���n� belirtecekse yani �art�m�z belirli bir de�er aral��� olacaksa between komutunu kullan�p daha pratik bir �ekilde �art�m�z� olu�turabiliriz.

-- Do�um y�l� 1950 ile 1965 y�llar� aras�nda olan personelleri getirelim.
Select * from Personeller Where YEAR(DogumTarihi) between 1950 and 1965