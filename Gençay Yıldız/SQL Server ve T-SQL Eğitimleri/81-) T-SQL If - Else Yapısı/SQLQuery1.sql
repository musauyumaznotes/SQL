-- If Yap�s�

-- =  : E�itse
-- <> : E�it De�ilse
-- <  : K���kse
-- >  : B�y�kse

-- Tek Sat�rl�k �al��ma

Declare @Isim nvarchar(MAX)
Set @Isim = 'Musa'

If @Isim = 'Musa'
	print 'Evet'
Else 
	print 'Hay�r'

-- Begin End Yap�s�(Scope)

Declare @Sayi1 int = 3
Declare @Sayi2 int = 5

If @Sayi1 < @Sayi2
	Begin
		print 'Evet Say�1 Say�2''den k���kt�r.'
		Select @Sayi1 [Say� 1],@Sayi2 [Say� 2]
	End
Else
	Begin
		print 'Evet Say�1 Say�2''den k���k de�ildir.'
		Select @Sayi1 [Say� 1],@Sayi2 [Say� 2]
	End



--�rnek 1
-- M��teriler tablosunda Amerikal�(USA) m��teri varm�?
Select * from Musteriler Where Ulke = 'USA'

If @@ROWCOUNT > 0
	print('Evet')
Else 
	print('Hay�r')

--�rnek 2
--Ad� 'Musa' soyad� 'Uyumaz' olan Personel var m� varsa evet var desin. Yoksa kaydetsin
Declare @adi nvarchar(MAX),@soyAdi nvarchar(MAX)
Select @adi = Adi,@soyAdi = SoyAdi from Personeller Where Adi = 'Musa' and SoyAdi = 'Uyumaz'

If  @@ROWCOUNT > 0
	print('Evet Var')
Else
	Begin
		Insert Personeller(Adi,SoyAdi) Values('Musa','Uyumaz')
		print('Kaydedildi')
	End