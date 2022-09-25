-- Bulk Insert

Bulk Insert Kisiler
From 'D:\Kisiler.txt'
With
(
	Fieldterminator = '\t', -- Kolonlarý ayýracak özellik '\t'=> tab komutunu iþaret etmektedir.
	RowTerminator = '\n'-- Satýrlarý ayýracak özellik '\n' => satýr komutunu iþaret etmektedir.
)

Select * from Kisiler