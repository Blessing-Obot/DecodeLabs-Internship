# E-Commerce Sales Performance & Customer Insights Analysis

## Project Overview
This project analyzes e-commerce transaction data to evaluate the business' sales performance, customer purchasing behaviour, product performance, marketing channels, promotional activities, and order fulfillment. The analysis uses SQL to answer key business questions, including net revenue and completed orders, top-performing products, monthly revenue trends, high-spending customers, purchase drop-off rates, referral channel performance, coupon effectiveness, and the financial impact of cancelled and returned orders. The findings are used to identify areas of revenue growth, customer retention, conversion improvement, and operational efficiency.


## Business Problems
1.	What is the total net revenue and order count, excluding cancelled and returned orders?
2.	Which products generate the highest total revenue, and how many units were sold?
3.	What is the monthly revenue trend across the dataset?
4.	Who are the top 10 highest-spending customers, and how many orders have they placed?
5.  What is the purchase drop-off rate between items added to cart and units purchased, and how does it vary by month?
6.	Which marketing referral channels drive the most revenue and highest average order value?
7.	How do promo coupons perform in terms of order volume and total revenue generated?
8.	What is the breakdown and financial impact of cancelled and returned orders?


## Query Execution & Key Insights

- ### Total Net Revenue and Completed Order Count

<img width="450" height="228" alt="Q1" src="https://github.com/user-attachments/assets/99f9393d-edcc-4f24-b885-4a9f0a9871da" />

Out of 1,200 total placed orders, only 703 were successfully fulfilled and retained, yielding 745,088.05 in net revenue. The business successfully converts over 58% of gross order volume into fulfilled sales. 
Losing 497 orders to fulfillment issues indicates significant operational revenue leakage that stifles top-line growth.



- ### Highest Revenue Generating Products and Units Sold

<img width="346" height="328" alt="Q2" src="https://github.com/user-attachments/assets/a9b6e8c4-03b5-472a-8302-ed29d7d53363" />

Revenue performance is evenly balanced across the catalog, with no single flagship item over-indexing the company's financial portfolio. Office hardware leads the list, with Chairs (195,620.11) and Printers (195,612.61) generating the highest sales. 
This even distribution shows strong multi-category demand but highlights a lack of cross-selling strategies that could elevate bundled basket values.


- ### Monthly Revenue Performance Trend

<img width="499" height="568" alt="Q3" src="https://github.com/user-attachments/assets/9b95d5a0-37d5-4f70-b015-4553d5d02fc1" />

Sales volume displays cyclical volatility rather than sustained compound growth. High-performing months like June 2024 (68,068.54) and May 2023 (63,836.84) are regularly followed by sharp drop-offs in subsequent months. 
This volatility suggests that sales spikes are tied to short-term promotional campaigns rather than organic, recurring baseline customer demand.


- ### Top 10 Highest-Spending Customers

<img width="316" height="386" alt="Q4" src="https://github.com/user-attachments/assets/c7e457c9-225d-405d-b873-4d59e1182b8e" />

Nine out of the ten highest-spending accounts made only one transaction before churning. This highlights a weak customer lifecycle model where high acquisition costs are not being maximized through repeat purchases.


- ### Purchase Drop-Off Rate Between Cart Additions and Orders

<img width="605" height="593" alt="Q5" src="https://github.com/user-attachments/assets/536c514c-14ad-44d0-9fc4-f508ff46ae96" />

Friction in the checkout funnel consistently causes the loss of nearly half of all prospective unit sales prior to transaction finalization. Consumers routinely build shopping carts but abandon them at checkout, keeping drop-off rates close to 45% every month. 
This indicates systemic friction during checkout, such as unexpected shipping costs or complicated payment steps.


- ### Revenue & Average Order Value (AOV) by Referral Channel

<img width="550" height="296" alt="Q6" src="https://github.com/user-attachments/assets/a54a9642-e698-4bb9-9e81-d7ba00015895" />

Digital acquisition channels are well-balanced, but social platforms capture the highest value. Instagram delivers the highest aggregate gross volume (275,285.45), while Facebook leads in transaction size with an AOV of 1,098.29. 
Direct referrals lag in total output (226,815.58), highlighting an underutilized organic word-of-mouth channel.


- ### Promotional Coupon Code Performance

<img width="349" height="290" alt="Q7" src="https://github.com/user-attachments/assets/31f9fa38-11a9-4664-9247-ed7cc8115d23" />

Incentives that lower shipping fees drive more conversions than direct price discounts. FREESHIP generated the highest order volume (313 orders) and overall revenue (335,036.99). This aligns with Query 5's checkout drop-off findings, showing that shipping costs are a primary point of checkout friction for customers.



- ### Financial Impact of Cancelled and Returned Orders

<img width="564" height="280" alt="Q8" src="https://github.com/user-attachments/assets/b2a592d7-edaf-4f35-9379-8e8e683347d1" />

Post-purchase fulfillment failures eliminate over 519,673.91 in top-line sales. Cancellations account for 276,396.21 in lost sales before order dispatch, pointing to inventory discrepancies or delayed processing times. 
Returns account for 243,277.70 in losses post-delivery, indicating gaps in product expectations, packaging quality, or buyer regret.



## Recommendation
The business should:
- Focus on reducing revenue leakage and improving customer conversion and retention
- Simplify the checkout process and reducing unexpected shipping costs since nearly 45% of potential purchases are lost during checkout. 
- Improve inventory management and fulfillment processes to reduce the significant losses from cancellations and returns. 
- Include targeted retention strategies such as personalized offers and loyalty incentives to encourage repeat purchases. 
- Leverage Instagram for revenue generation and Facebook for higher-value transactions, while expanding direct referral opportunities. 
- Consider free-shipping promotions as an effective strategy for improving conversions.
- Use cross-selling and product-bundling strategies to increase revenue from the evenly distributed product categories.



## Limitation
The analysis is based on the available transaction data, which provides limited insight into the factors influencing customer behaviour. Information such as customer demographics, reasons for cart abandonment, specific causes of cancellations and returns, marketing campaign costs, and customer feedback was not available. As a result, the findings can highlight patterns and possible contributing factors, but they cannot establish the direct causes behind these outcomes.


## Conclusion
The analysis highlights several opportunities to improve business performance. The major areas of concern are fulfillment losses, checkout drop-off, customer retention, and revenue volatility. At the same time, Instagram, Facebook, and free-shipping promotions show strong commercial potential. Addressing the identified operational and customer-experience issues while strengthening effective marketing strategies can help the business improve conversion, retain customers, and reduce revenue leakage.


