-- If - Else If - Else Yapýsý

Declare @Adi nvarchar(max) = 'Musa'
Declare @Yas int = 23

If @Adi = 'Mahmut'	
	print 'Evet Mahmut'
Else If @Yas > 24
	print 'Yaþý 24''den büyük'
Else If 3 > 5
	print ''
Else If 1 = 1
	print 'Eþit'
Else 
	print 'abc'