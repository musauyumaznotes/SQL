-- Null Kontrol Mekanizmalar�

-- Case-When-Then-Else-End Kal�b� �le Null Kontrol�
Select MusteriAdi,Bolge From Musteriler

Select MusteriAdi,
Case
	When Bolge Is Null Then 'B�lge Bilinmiyor'
	Else
	Bolge
end
from Musteriler

