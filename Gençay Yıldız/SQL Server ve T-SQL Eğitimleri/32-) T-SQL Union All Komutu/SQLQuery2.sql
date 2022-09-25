-- Union | Union All

-- Union All
-- Union tekrarlý kayýtlarý getirmez. Tekrarlý kayýtlarý getirmek için Union All komutu kullanýlmaktadýr
Select Adi,SoyAdi from Personeller
Union All
Select Adi,SoyAdi from Personeller