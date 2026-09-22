# Hyderabad Tiffin Delivery Analysis

## 📊 Project Overview

This project analyzes Hyderabad tiffin delivery data to understand sales performance, delivery performance, customer satisfaction, and operational performance.

The analysis focuses mainly on performance across different **areas** and **meal types**.

The project follows a complete Data Analytics workflow:

**Business Problem → Data Cleaning → SQL Analysis → Power BI Dashboard → Insights → Recommendations**

---

## 🎯 Business Problem

A Hyderabad tiffin delivery business wants to understand its sales performance, delivery performance, customer satisfaction, and operational performance.

Management wants to identify which areas and meal types are performing well or poorly and identify areas with higher late-delivery rates.

---

## ❓ Business Questions

### Sales Performance
- Which area generates the highest sales?
- Which area generates the lowest sales?
- Which meal type generates the highest sales?
- Which meal type generates the lowest sales?

### Delivery Performance
- Which area has the highest average delivery time?
- Which area has the lowest average delivery time?
- Which meal type has the highest average delivery time?
- Which meal type has the lowest average delivery time?

### Customer Satisfaction
- Which area has the highest average customer rating?
- Which area has the lowest average customer rating?
- Which meal type has the highest average customer rating?
- Which meal type has the lowest average customer rating?

### Operational Performance
- Which area has the highest average preparation time?
- Which area has the lowest average preparation time?
- Which meal type has the highest average preparation time?
- Which meal type has the lowest average preparation time?

---

## 🗂️ Dataset

The dataset contains **500 cleaned order records** covering Hyderabad tiffin delivery operations.

The dataset is **realistic synthetic data created for learning and portfolio analysis** and does not represent data collected from an actual company.

Key fields include:

- Order ID
- Order Date
- Customer ID
- Area
- Tiffin Type
- Meal Type
- Delivery Partner
- Delivery Distance
- Preparation Time
- Delivery Time
- Quantity
- Discount
- Order Amount
- Payment Method
- Order Status
- Customer Rating
- Complaint

---

## 🧹 Data Cleaning

Data cleaning was performed before analysis.

The cleaning process included:

- Checking for duplicate records
- Handling missing values
- Checking data types
- Reviewing categorical values
- Preparing the data for SQL and Power BI analysis

---

## 🧮 SQL Analysis

PostgreSQL was used to analyze the data and answer the business questions.

Key SQL concepts used:

- `SUM()`
- `COUNT()`
- `AVG()`
- `GROUP BY`
- `ORDER BY`
- `CASE WHEN`
- `ROUND()`
- `CTE`
- Conditional calculations

Examples of analysis included:

- Sales by area
- Sales by meal type
- Average delivery time
- Average customer rating
- Average preparation time
- Late delivery rate
- Cancellation rate

---

## 📊 Power BI Dashboard

The cleaned data was connected to Power BI to create an interactive dashboard.

### Key KPIs

- Total Sales
- Total Orders
- Total Complaints
- Late Delivery Rate

### Dashboard Visuals

- Sales by Area
- Sales by Meal Type
- Average Delivery Time by Area
- Average Delivery Time by Meal Type
- Average Customer Rating by Area
- Average Customer Rating by Meal Type
- Average Preparation Time by Area
- Average Preparation Time by Meal Type

---

## 🔍 Key Insights

- Secunderabad generated the highest sales, while Uppal generated the lowest sales.
- Miyapur had the lowest average delivery time, while Kukatpally had the highest average delivery time.
- Dinner generated the highest sales and had the highest average customer rating.
- Breakfast generated the lowest sales and had the lowest average customer rating.

---

## 💡 Recommendations

- Analyze the factors contributing to stronger sales in Secunderabad and identify opportunities to improve sales in Uppal.
- Review the delivery and preparation process in Kukatpally to identify opportunities to reduce delivery time.
- Investigate the factors behind lower Breakfast sales and customer ratings by reviewing the menu, pricing, food quality, and customer feedback.

---

## 🛠️ Tools & Technologies

- PostgreSQL
- SQL
- Power Query
- Power BI
- Excel
- Data Cleaning
- Data Analysis
- Data Visualization

---

## 📈 Project Outcome

This project helped me practice the complete Data Analytics workflow, from understanding a business problem and cleaning data to SQL analysis, dashboard development, insight generation, and business recommendations.

---

## 👨‍💻 Author

**Rahul Bera**

Aspiring AI powered Data Analyst

Skills: SQL | Power BI | Excel | Power Query | PostgreSQL | Python
