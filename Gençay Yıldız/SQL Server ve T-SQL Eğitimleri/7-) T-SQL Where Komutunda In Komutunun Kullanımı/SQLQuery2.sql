-- In Komutu => Or komutuyla belirttiğimiz şartları biz In komutu ile daha pratik bir şekilde gerçekleştirmekteyiz

-- Yaşadığı şehrin London,Tacoma ve Kirkland olan personellerin adını listeleyelim.
Select Adi from Personeller Where Sehir In('London','Tacoma','Kirkland')