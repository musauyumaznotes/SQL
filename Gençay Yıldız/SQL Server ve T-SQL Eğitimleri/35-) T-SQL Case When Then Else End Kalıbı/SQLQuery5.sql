-- Case - When - Else - End => Sorgularda �art kal�b� olarak kullan�r�z

-- Personellerimizin isim ve soyisimlerinin yan�na UnvanEki 'Mr.' ise 'Erkek' , 'Ms.' ise 'Kad�n' yazs�n
Select Adi,SoyAdi,UnvanEki from Personeller

Select 
Adi,SoyAdi,
Case 
When UnvanEki = 'Mrs.' or UnvanEki = 'Ms.' Then 'Kad�n'
When UnvanEki = 'Mr.' Then 'Erkek'
Else UnvanEki
End
from Personeller

-- E�er �r�n�n birim fiyat� 0 - 50 aras� ise '�in Mal�',50 - 100 aras� ise 'Ucuz', 100 - 200 aras� ise 'Normal' ve 200'den fazla ise 'Pahal�' yazs�n

Select 
UrunID,
Case
When BirimFiyati Between 0 and 50 Then '�in Mal�'
When BirimFiyati Between 50 and 100 Then 'Ucuz'
When BirimFiyati Between 100 and 200 Then 'Normal'
When BirimFiyati > 200 Then 'Pahal�'
else 
'Belirsiz'
End
from Urunler