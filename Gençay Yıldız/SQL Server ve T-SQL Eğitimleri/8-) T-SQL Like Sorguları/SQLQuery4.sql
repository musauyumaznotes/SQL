USE Northwind

-- Like Sorgularý =>Kolonlar içindeki Verilere belirli þartlarýmýzý koyabiliriz.

-- %(Genel Önemli Deðil) Operatörü => Aradýðýmýz kriterin dýþýndakileri ifade edebiliyoruz.

-- Ýsminin baþ harfi j olan personellerin adýný ve soyadýný yazdýralým.
Select Adi,SoyAdi from Personeller Where Adi Like 'j%' -- => ilk harfi j olan gerisi önemli/mühim olmayan 

-- Ýsminin son harfi y olan personellerin adýný ve soyadýný yazdýralým.
Select Adi,SoyAdi from Personeller Where Adi Like '%y'

-- Ýsminin son üç harfi ert olan personeli getirelim
Select * from Personeller Where Adi Like '%ert'

-- Ýsminin ilk harfi r son harfi t olan personeli getirelim.
Select Adi,SoyAdi from Personeller Where Adi Like 'r%t' 
-- Gereksiz bir kullaným.
Select Adi,SoyAdi from Personeller Where Adi Like 'r%' and Adi Like '%t'

-- Ýsminde an geçen personelin adýný yazdýralým.
Select Adi From Personeller Where Adi Like '%an%'

-- isminin baþ harfi n olan ve içerisinde an geçen personeli getirelim.
Select * From Personeller Where Adi Like 'n%an%'
-- Gereksiz bir kullaným
Select * From Personeller Where Adi Like 'n%' and Adi Like '%an%'

-- _(Özel Önemli Deðil) Operatörü => Bu operatörü kullandýðýmýz karakter o anki karakterin önemli olmadýðýný belirtir.

-- Ýsminin ilk harfi a,ikinci harfi fark etmez ve üçüncü harfi d olan personeli getirelim.
Select * From Personeller Where Adi Like 'a_d%' -- => ilk harfi a ikinci harfi fark etmez üçüncü harfi d olan ve bundan sonrasý fark etmeyen deðer.

-- Ýsminin ilk harfi m,ikinci-üçüncü-dördüncü fark etmez ve beþinci harfi a olan personeli getirelim.
Select * From Personeller Where Adi Like 'm___a%'

-- [](ya da operatörü)

-- Ýsminin ilk harfi n ya da m ya da r olan personelleri getirelim.
Select * from Personeller Where Adi Like '[nmr]%'

-- Ýsminin içerisinde a ya da i geçen personelleri getirelim.
Select * from Personeller Where Adi Like '%[ai]%'

-- [*-*](Alfabetik Arasýnda) Operatörü *=> belirli harfleri belirlemekte

-- Ýsminin baþ harfi a ile k arasýnda alfabetik sýraya göre herahngi bir harf olan personellerin adýný yazdýralým
Select Adi From Personeller Where Adi Like '[a-k]%'

-- [^*](Deðil) Operatörü

-- Ýsminin baþ harfi a olmayan personelleri getirelim.
Select * from Personeller Where Adi Like '[^a]%'

-- Ýsminin baþ harfi an olmayan personelleri getirelim.
Select * from Personeller Where Adi Like '[^an]%'
