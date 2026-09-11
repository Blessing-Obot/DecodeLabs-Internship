USE decode_labs;

SELECT * FROM dl_table;

-- What is the total net revenue and order count, excluding cancelled and returned orders?
SELECT 
	COUNT(OrderID) AS Total_Orders,
	SUM(TotalPrice) AS Total_Net_Revenue	
FROM dl_table
WHERE OrderStatus NOT IN ('Cancelled', 'Returned');

SELECT 
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dl_table';

SELECT TotalPrice
FROM dl_table
WHERE TRY_CAST(TotalPrice AS DECIMAL(18,2)) IS NULL
  AND TotalPrice IS NOT NULL;

ALTER TABLE dl_table
ALTER COLUMN TotalPrice DECIMAL(18,2);


SELECT 
	COUNT(OrderID) AS Total_Orders,
	SUM(TotalPrice) AS Total_Net_Revenue	
FROM dl_table
WHERE OrderStatus NOT IN ('Cancelled', 'Returned');



-- Which products generate the highest total revenue, and how many units were sold?
SELECT * FROM dl_table;

SELECT Product,
	SUM(Quantity) AS Total_Units,
	SUM(TotalPrice) AS Total_Revenue
FROM dl_table
GROUP BY Product
Order by Total_Revenue DESC;


-- What is the monthly revenue trend across the dataset?

SELECT
    YEAR(Date) AS Year,
    LEFT(DATENAME(MONTH, Date),3) AS Month,
    SUM(TotalPrice) AS monthly_revenue
FROM dl_table
GROUP BY YEAR(Date), MONTH(Date), DATENAME(MONTH, Date)
ORDER BY YEAR(Date), MONTH(Date);

-- Who are the top 10 highest-spending customers, and how many orders have they placed?

SELECT Top 10
	CustomerID, 
	COUNT(OrderID) AS Orders,
	SUM(TotalPrice) AS Total_Spent
FROM dl_table
GROUP BY CustomerID
ORDER BY Total_Spent DESC;


-- What is the purchase drop-off rate between items added to cart and units purchased, and how does it vary by month?

SELECT * FROM dl_table;

SELECT
    YEAR(Date) AS Year,
    LEFT(DATENAME(MONTH, Date),3) AS Month,
    SUM(ItemsInCart) AS Total_Items_Added,
    SUM(Quantity) AS Total_Units_Bought,
   CAST( (SUM(ItemsInCart) - SUM(Quantity)) * 100.0
        / NULLIF(SUM(ItemsInCart), 0) AS DECIMAL (4,2)) AS Drop_Off_Rate
FROM dl_table
GROUP BY YEAR(Date), MONTH(Date), DATENAME(MONTH, Date)
ORDER BY Year, Month;   



-- Which marketing referral channels drive the most revenue and highest average order value?
SELECT * FROM dl_table;

SELECT ReferralSource, 
    SUM(TotalPrice) AS Total_Revenue,
    CAST(AVG(TotalPrice) AS DECIMAL(6,2)) AS Average_Order_Value
FROM dl_table
GROUP BY ReferralSource
ORDER BY Total_Revenue, Average_Order_Value DESC;



-- How do promo coupons perform in terms of order volume and total revenue generated?

SELECT 
    CouponCode,
    COUNT(OrderID) AS Order_Volume,
    SUM(TotalPrice) AS Total_Revenue
FROM dl_table
WHERE CouponCode <> 'No Coupon'
GROUP BY CouponCode
ORDER BY Total_Revenue DESC;


-- What is the breakdown and financial impact of cancelled and returned orders?

SELECT
    OrderStatus,
    COUNT(OrderID) AS Order_Volume,
    SUM(TotalPrice) AS Total_Revenue,
    CAST(AVG(TotalPrice) AS DECIMAL (6,2)) AS Average_Order_Value
FROM dl_table
WHERE OrderStatus IN ('Cancelled', 'Returned')
GROUP BY OrderStatus
ORDER BY Total_Revenue DESC;


































































