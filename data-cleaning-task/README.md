# DATA CLEANING REPORT

## Overview
The dataset was extracted from Decode Labs platform. It contains 14 columns and approximately 1,200 records, with Order IDs running sequentially from ORD200000 to ORD201199 with no gaps. 
The dataset provides useful information on customer purchasing behavior, order fulfillment, sales performance, and marketing channels within the platform. The dataset includes both categorical and numerical variables. Categorical variables include Order Status, Payment Method, Product, Coupon Code, and Referral Source, while numerical variables include Quantity, Unit Price, Items in Cart, and Total Price. These fields provide a basis for analyzing sales patterns, customer behavior, payment preferences, order outcomes, and marketing performance.

The Customer ID is an alphanumeric identifier assigned to each customer. Since a customer can place multiple orders over time, the Customer ID can appear across multiple records. This makes it possible to identify repeat customers and analyze their purchasing patterns. Each transaction also has a unique Order ID, which serves as the main reference for an order. It can be used to track an order from the date it was placed through its fulfillment status, such as Delivered, Shipped, Returned, Cancelled, or Pending. A Tracking Number is also recorded for each order to support shipment tracking.
The dataset also captures marketing and promotional activity. The Referral Source field identifies the channel through which customers reached the platform, such as Instagram, Google, Email, Facebook, or Referral. The Coupon Code field records promotional codes applied during checkout. Where no coupon was used, the field was left blank and later categorized as "No Coupon" during data cleaning.



## Data Dictionary
| Column | Data Type | Description |
| --- | --- | --- |
| `OrderID` | Text | An alphanumeric unique identifier for each order (e.g ORD201199, ORD2000007) |
| `Date` | Date | The day (date) the order was placed |
| `CustomerID` | Text | A unique identifier for each customer that placed an order (e.g C36992, C93861) |
| `Product` | Text | The item that was ordered |
| `Quantity` | Whole Number | The number of items that were ordered |
| `UnitPrice` | Decimal Number | The price of one unit of the product | 
| `ShippingAddress` | Text | The address where the order is to be delivered|
| `PaymentMethod` | Text | The method used by the customer to pay for the order |
| `OrderStatus` | Text | The status of the order, such as pending, shipped, delivered, cancelled, or returned |
| `TrackingNumber` | Text | A unique number used to track the delivery of an order | 
| `ItemsInCart` | Whole Numbers | The number of items that were in the customer's cart when the order was placed |
| `CouponCode` | Text | The discount or promotional code used by the customer when placing the order. This field may be blank when no coupon code was used |
| `ReferralSource` | Text | The channel or source through which the customer was referred to the store, such as Google, Facebook, Instagram, Email, or Referral | 
| `TotalPrice` | Decimal Number | The total amount paid for the products in the order. It is calculated by multiplying the quantity ordered by the unit price |



## Data Cleaning Process
- **Handling null values:**
CouponCode was the only column with missing values. The null values were replaced with "No Coupon". This indicates that no coupon code was used for that order.

- **Data Standardization:**
  The data types of the columns were reviewed to make sure each column was in the appropriate format. The date format was changed from YYYY/MM/DD to DD/MM/YYYY using Power Query to make the dates easier to read and consistent with the preferred format. The date field originally contained both the date and time. Since the time was 00:00:00 for all records, the column was changed to date datatype. 
The TRIM function was also used to remove unnecessary whitespaces and ensure consistency in the data. The UnitPrice  and TotalPrice column were formatted to two decimal places to ensure that all monetary values were displayed consistently.

- **Value Confirmation:**
A new column was created to verify the accuracy of the TotalPrice. Since TotalPrice is calculated by multiplying the quantity of items ordered by the unit price, the new column was used to compare the calculated value with the existing TotalPrice in the dataset.
Quantity × UnitPrice = TotalPrice
This was done to confirm that the total price recorded for each order was accurate.



## Data Limitation
One limitation identified in the dataset is that the currency for the UnitPrice and TotalPrice columns was not specified. Therefore, no currency symbol was added during the cleaning process.

 
