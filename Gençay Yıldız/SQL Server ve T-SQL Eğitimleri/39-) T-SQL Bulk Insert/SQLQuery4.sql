-- Bulk Insert

Bulk Insert Kisiler
From 'D:\Kisiler.txt'
With
(
	Fieldterminator = '\t', -- Kolonlar� ay�racak �zellik '\t'=> tab komutunu i�aret etmektedir.
	RowTerminator = '\n'-- Sat�rlar� ay�racak �zellik '\n' => sat�r komutunu i�aret etmektedir.
)

Select * from Kisiler