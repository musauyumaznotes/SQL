USE Northwind

-- Like Sorgular� =>Kolonlar i�indeki Verilere belirli �artlar�m�z� koyabiliriz.

-- %(Genel �nemli De�il) Operat�r� => Arad���m�z kriterin d���ndakileri ifade edebiliyoruz.

-- �sminin ba� harfi j olan personellerin ad�n� ve soyad�n� yazd�ral�m.
Select Adi,SoyAdi from Personeller Where Adi Like 'j%' -- => ilk harfi j olan gerisi �nemli/m�him olmayan 

-- �sminin son harfi y olan personellerin ad�n� ve soyad�n� yazd�ral�m.
Select Adi,SoyAdi from Personeller Where Adi Like '%y'

-- �sminin son �� harfi ert olan personeli getirelim
Select * from Personeller Where Adi Like '%ert'

-- �sminin ilk harfi r son harfi t olan personeli getirelim.
Select Adi,SoyAdi from Personeller Where Adi Like 'r%t' 
-- Gereksiz bir kullan�m.
Select Adi,SoyAdi from Personeller Where Adi Like 'r%' and Adi Like '%t'

-- �sminde an ge�en personelin ad�n� yazd�ral�m.
Select Adi From Personeller Where Adi Like '%an%'

-- isminin ba� harfi n olan ve i�erisinde an ge�en personeli getirelim.
Select * From Personeller Where Adi Like 'n%an%'
-- Gereksiz bir kullan�m
Select * From Personeller Where Adi Like 'n%' and Adi Like '%an%'

-- _(�zel �nemli De�il) Operat�r� => Bu operat�r� kulland���m�z karakter o anki karakterin �nemli olmad���n� belirtir.

-- �sminin ilk harfi a,ikinci harfi fark etmez ve ���nc� harfi d olan personeli getirelim.
Select * From Personeller Where Adi Like 'a_d%' -- => ilk harfi a ikinci harfi fark etmez ���nc� harfi d olan ve bundan sonras� fark etmeyen de�er.

-- �sminin ilk harfi m,ikinci-���nc�-d�rd�nc� fark etmez ve be�inci harfi a olan personeli getirelim.
Select * From Personeller Where Adi Like 'm___a%'

-- [](ya da operat�r�)

-- �sminin ilk harfi n ya da m ya da r olan personelleri getirelim.
Select * from Personeller Where Adi Like '[nmr]%'

-- �sminin i�erisinde a ya da i ge�en personelleri getirelim.
Select * from Personeller Where Adi Like '%[ai]%'

-- [*-*](Alfabetik Aras�nda) Operat�r� *=> belirli harfleri belirlemekte

-- �sminin ba� harfi a ile k aras�nda alfabetik s�raya g�re herahngi bir harf olan personellerin ad�n� yazd�ral�m
Select Adi From Personeller Where Adi Like '[a-k]%'

-- [^*](De�il) Operat�r�

-- �sminin ba� harfi a olmayan personelleri getirelim.
Select * from Personeller Where Adi Like '[^a]%'

-- �sminin ba� harfi an olmayan personelleri getirelim.
Select * from Personeller Where Adi Like '[^an]%'
