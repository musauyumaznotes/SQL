-- DML (Data Manipulation Language)

-- Delete
-- Delete From [Tablo Ad�]
Delete from Urunler

-- [Delete Sorgusunda Where �art� Yazmak]
Delete From Urunler Where KategoriID < 3

-- [Dikkat Edilmesi Gerekenler!!!]
-- Delete sorgusuyla tablo i�erisindeki t�m verileri silmeniz identity kolonunu s�f�rlamayacakt�r. Silme i�leminden sonra ilk eklenen veride kal�nd��� yerden id de�eri verilecektir.