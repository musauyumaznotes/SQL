-- While Döngüsü - Continue komutu

Declare @Sayac int = 0

While @Sayac < 100
	Begin
		print @Sayac
		Set  @Sayac += 1
		If @Sayac % 5 = 0
			Continue
	End