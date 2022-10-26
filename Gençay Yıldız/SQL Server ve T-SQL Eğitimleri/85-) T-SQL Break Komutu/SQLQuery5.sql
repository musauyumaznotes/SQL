-- While Döngüsü - Break komutu

Declare @Sayac int = 0

While @Sayac < 1000
	Begin
		print @Sayac
		Set  @Sayac += 1
		If @Sayac % 5 = 0
			break
	End