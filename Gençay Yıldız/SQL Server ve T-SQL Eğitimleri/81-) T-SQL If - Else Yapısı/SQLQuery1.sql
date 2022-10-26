-- If Yapýsý

-- =  : Eþitse
-- <> : Eþit Deðilse
-- <  : Küçükse
-- >  : Büyükse

-- Tek Satýrlýk Çalýþma

Declare @Isim nvarchar(MAX)
Set @Isim = 'Musa'

If @Isim = 'Musa'
	print 'Evet'
Else 
	print 'Hayýr'

-- Begin End Yapýsý(Scope)

Declare @Sayi1 int = 3
Declare @Sayi2 int = 5

If @Sayi1 < @Sayi2
	Begin
		print 'Evet Sayý1 Sayý2''den küçüktür.'
		Select @Sayi1 [Sayý 1],@Sayi2 [Sayý 2]
	End
Else
	Begin
		print 'Evet Sayý1 Sayý2''den küçük deðildir.'
		Select @Sayi1 [Sayý 1],@Sayi2 [Sayý 2]
	End



--Örnek 1
-- Müþteriler tablosunda Amerikalý(USA) müþteri varmý?
Select * from Musteriler Where Ulke = 'USA'

If @@ROWCOUNT > 0
	print('Evet')
Else 
	print('Hayýr')

--Örnek 2
--Adý 'Musa' soyadý 'Uyumaz' olan Personel var mý varsa evet var desin. Yoksa kaydetsin
Declare @adi nvarchar(MAX),@soyAdi nvarchar(MAX)
Select @adi = Adi,@soyAdi = SoyAdi from Personeller Where Adi = 'Musa' and SoyAdi = 'Uyumaz'

If  @@ROWCOUNT > 0
	print('Evet Var')
Else
	Begin
		Insert Personeller(Adi,SoyAdi) Values('Musa','Uyumaz')
		print('Kaydedildi')
	End