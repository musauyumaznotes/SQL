-- DML (Data Manipulation Language)

-- Delete
-- Delete From [Tablo Adý]
Delete from Urunler

-- [Delete Sorgusunda Where Þartý Yazmak]
Delete From Urunler Where KategoriID < 3

-- [Dikkat Edilmesi Gerekenler!!!]
-- Delete sorgusuyla tablo içerisindeki tüm verileri silmeniz identity kolonunu sýfýrlamayacaktýr. Silme iþleminden sonra ilk eklenen veride kalýndýðý yerden id deðeri verilecektir.