-- Null Kontrol Mekanizmalarý

-- Case-When-Then-Else-End Kalýbý Ýle Null Kontrolü
Select MusteriAdi,Bolge From Musteriler

Select MusteriAdi,
Case
	When Bolge Is Null Then 'Bölge Bilinmiyor'
	Else
	Bolge
end
from Musteriler

