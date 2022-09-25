-- Case - When - Else - End => Sorgularda þart kalýbý olarak kullanýrýz

-- Personellerimizin isim ve soyisimlerinin yanýna UnvanEki 'Mr.' ise 'Erkek' , 'Ms.' ise 'Kadýn' yazsýn
Select Adi,SoyAdi,UnvanEki from Personeller

Select 
Adi,SoyAdi,
Case 
When UnvanEki = 'Mrs.' or UnvanEki = 'Ms.' Then 'Kadýn'
When UnvanEki = 'Mr.' Then 'Erkek'
Else UnvanEki
End
from Personeller

-- Eðer ürünün birim fiyatý 0 - 50 arasý ise 'Çin Malý',50 - 100 arasý ise 'Ucuz', 100 - 200 arasý ise 'Normal' ve 200'den fazla ise 'Pahalý' yazsýn

Select 
UrunID,
Case
When BirimFiyati Between 0 and 50 Then 'Çin Malý'
When BirimFiyati Between 50 and 100 Then 'Ucuz'
When BirimFiyati Between 100 and 200 Then 'Normal'
When BirimFiyati > 200 Then 'Pahalý'
else 
'Belirsiz'
End
from Urunler