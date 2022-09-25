-- Union | Union All

-- Union
-- Birden fazla select sorgusu sonucunu tek seferde alt alta g�stermemizi sa�lar

Select Adi,SoyAdi from Personeller
Select MusteriAdi,Musteriunvani from Musteriler


Select Adi,SoyAdi from Personeller
Union
Select MusteriAdi,Musteriunvani from Musteriler

-- 2'den fazla
Select Adi,SoyAdi from Personeller
Union
Select MusteriAdi,Musteriunvani from Musteriler
Union
Select SevkAdi,SevkAdresi from Satislar

-- Joinler yan yana Union alt alta tablolar� birle�tirir. Joinlerde belirli(ili�kisel) bir klolon �zerinden birle�tirme yap�l�rken, Union'da b�yle bir durum yoktur.Union serseri bir �ekilde/kabataslak birle�tirir

-- Dikkat etmemiz gereken ko�ullar;
-- Union sorgusunun sonucunda olu�an tablonun kolon isimnleri, �stteki sorgunun kolon isimlerinden olu�turulur.
-- �stteki sorgudan ka� kolon �ekilmi�se alttaki sorgudan da o kadar �ekilmek zorundad�r�
-- �stteki sorgudan �ekilen kolonlar�n tipleriyle, alttaki sorgudan �ekilen kolonlar�n tipleri uyumlu olmal�d�r.
-- Union tekrarl� kay�tlar� getirmez

-- Union'da kullan�lan tablolara kolon eklenebilir. Dikkat etmemiz gereken nokta, yukar�daki kurallar �er�evesinde a�a��ya da yukar�ya da ayn� say�da kolonlar�n eklenmesi gerekmektedir
Select Adi,SoyAdi,'Personel' from Personeller
Union
Select MusteriAdi,Musteriunvani,'M��teri' from Musteriler
