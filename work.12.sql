--1 Her kategorideki (CategoryID) ürün sayısını gösteren bir sorgu yazın.
--SELECT categoryid, unitsinstock 
--FROM Products 
--group by categoryid

--2 Birim fiyatı en yüksek 5 ürünü listeleyin.
-- SELECT * from products order BY unitprice DESC LIMIT 5

--3Her tedarikçinin sattığı ürünlerin ortalama fiyatını listeleyin.
--select supplierid,AVG(unitprice) as averageprice
--from products  
--group by supplierid

--4"Products" tablosunda birim fiyatı 100'den büyük olan ürünlerin kategorilerini ve bu kategorilerdeki ortalama fiyatı listeleyin.
--SELECT CategoryID, AVG(UnitPrice) AS AveragePrice
--from Products
--where unitprice > 100 
--GROUP by categoryid

--5"OrderDetails" tablosunda birim fiyat ve miktar çarpımıyla toplam satış değeri 1000'den fazla olan siparişleri listeleyin.?????????
--SELECT * FROM 'Order Details' 
--where (unitprice * quantity) > 1000

--6En son sevk edilen 10 siparişi listeleyin.
-- SELECT * FROM ORDERS ORDER BY shippeddate DESC LIMIT 10 

--7"Products" tablosundaki ürünlerin ortalama fiyatını hesaplayın.
--SELECT AVG(UnitPrice) AS AveragePrice FROM Products

--8"Products" tablosunda fiyatı 50’den büyük olan ürünlerin toplam stok miktarını hesaplayın.
--SELECT SUM(UnitsInStock) AS TotalStock
--FROM Products
--WHERE UnitPrice > 50

--9"Orders" tablosundaki en eski sipariş tarihini bulun.
-- SELECT * FROM ORDERS ORDER BY orderdate limit 1

--10"Employees" tablosundaki çalışanların kaç yıl önce işe başladıklarını gösteren bir sorgu yazın.
--SELECT * from Employees,


--11"OrderDetails" tablosundaki her bir sipariş için, birim fiyatın toplamını yuvarlayarak (ROUND) hesaplayın.
--SELECT OrderID,  ROUND(SUM(UnitPrice), 2) AS RoundedTotalUnitPrice
--FROM  "Order Details"
--GROUP BY OrderID

--12"Products" tablosunda stoktaki (UnitsInStock) ürün sayısını gösteren bir COUNT sorgusu yazın
--SELECT COUNT(*) AS InStockCount
--FROM Products
--WHERE UnitsInStock > 0

--13"Products" tablosundaki en düşük ve en yüksek fiyatları hesaplayın.
--SELECT MIN(UnitPrice) AS 'EnDüşük', MAX(UnitPrice) AS 'EnYüksek'
--FROM Products

--14"Orders" tablosunda her yıl kaç sipariş alındığını listeleyin (YEAR() fonksiyonunu kullanarak).
--SELECT 
--    strftime('%Y', OrderDate) AS OrderYear, 
--    COUNT(*) AS OrderCount
--FROM 
--    Orders
--GROUP BY 
--    strftime('%Y', OrderDate)

--15"Employees" tablosundaki çalışanların tam adını (FirstName + LastName) birleştirerek gösterin.
-- select concat(firstname, ' ', lastname) as 'FullName' from Employees order by firstname ASC

--16"Customers" tablosundaki şehir adlarının uzunluğunu (LENGTH) hesaplayın.
--SELECT City, LENGTH(City) AS 'sehiradiuzunulugu'
--FROM Customers 

--17"Products" tablosundaki her ürünün fiyatını iki ondalık basamağa yuvarlayarak gösterin.
--SELECT ProductID, ProductName,ROUND(UnitPrice, 2) AS RoundedPrice FROM Products

--18"Orders" tablosundaki tüm siparişlerin toplam sayısını bulun.
--SELECT COUNT(*) AS 'TOPLAM SİPARİS' FROM Orders

--19"Products" tablosunda her kategorideki (CategoryID) ürünlerin ortalama fiyatını (AVG) hesaplayın.
--SELECT CategoryID, AVG(UnitPrice) AS 'ORTALAMA FİYAT' from Products

--20"Orders" tablosunda sevk tarihi (ShippedDate) boş olan siparişlerin yüzdesini (COUNT ve toplam sipariş sayısını kullanarak) hesaplayın.


--21"Products" tablosundaki en pahalı ürünün fiyatını bulun ve bir fonksiyon kullanarak fiyatı 10% artırın.
--SELECT 
--    MAX(UnitPrice) AS 'EN YÜKSEK FİYAT', 
--    MAX(UnitPrice) * 1.10 AS IncreasedPrice
--FROM Products

--22"Products" tablosundaki ürün adlarının ilk 3 karakterini gösterin (SUBSTRING).
--SELECT  ProductID, ProductName, SUBSTR(ProductName, 1, 3) AS FirstThreeChars
--FROM Products

--23"Orders" tablosunda verilen siparişlerin yıl ve ay bazında kaç sipariş alındığını hesaplayın (YEAR ve MONTH fonksiyonları).


--24"OrderDetails" tablosunda toplam sipariş değerini (UnitPrice * Quantity) hesaplayıp, bu değeri iki ondalık basamağa yuvarlayarak gösterin.



-- 25"Products" tablosunda stokta olmayan (UnitsInStock = 0) ürünlerin fiyatlarını toplam fiyat olarak hesaplayın.???
SELECT SUM(UnitPrice) AS 'stok bulunmayan ürün' FROM Products
WHERE UnitsInStock = 0



