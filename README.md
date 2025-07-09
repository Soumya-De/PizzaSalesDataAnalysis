# 🍕 Pizza Sales Analysis – Power BI Dashboard

## 📊 Overview

This project provides an end-to-end **data analytics solution** for a pizza sales business, analyzing key sales metrics, order behavior, and category performance using **SQL for data modeling** and **Power BI for visualization**.

The insights are presented through an interactive, visually-optimized Power BI dashboard designed to inform strategic business decisions like peak order timing, product performance, and revenue patterns.

---

## 📁 Contents

- `PizzaSalesDashboard.pbix` – Power BI project file.
- `SQL Queries.sql` – Contains all KPI and chart-related SQL queries.
- `README.md` – Project overview and usage guide.

---

## 🔍 Key Insights

### 1. KPI Metrics
- 💰 **Total Revenue**: ₹8,17,860 across all orders.
- 🧾 **Average Order Value**: ₹38.31 per order.
- 🍕 **Total Pizzas Sold**: 49574 units.
- 📦 **Total Orders**: 21350 unique orders.
- 📊 **Average Pizzas per Order**: 2.32

### 2. Trend Analysis
- 📅 **Daily Order Trend**: Bar chart showing weekday peaks.
- ⏰ **Hourly Order Trend**: Line chart identifying lunch and dinner peak times.

### 3. Category Sales Breakdown
- 🍕 **Classic**: 26.91% of total revenue
- 🧀 **Supreme**: 25.46% of total revenue
- 🍗 **Chicken**: 23.96% of total revenue
- 🥦 **Veggie**: 23.68% of total revenue

---

## 🛠️ Tools & Technologies Used

- **SQL (MySQL)** – For schema creation, joins, and KPI queries.
- **Power BI** – For data visualization, DAX measures, and dashboard building.
- **Data Modeling** – Built 3 relational tables with normalized structure and foreign keys.

---

## 📌 Features

- 📊 Fully interactive Power BI dashboard
- 🔗 Multi-level data relationships across 3 tables
- 📈 Real-time KPIs with DAX
- 📅 Time-based trend charts with weekday/hour grouping
- 🧭 Slicers and filters for dynamic exploration
- ☁️ Hosted Power BI report for sharing and viewing

---

## 🔗 Live Power BI Dashboard

View the published dashboard here:  
🌐 [Pizza Sales Power BI Dashboard](https://app.powerbi.com/links/lIXHqIe40Q?ctid=fa366e3f-51af-4a6b-a80b-8fda0d2c7f2f&pbi_source=linkShare)

---

## 📈 Business Questions Answered

This project answered several core business questions by transforming raw transactional data into actionable insights using Power BI dashboards and DAX calculations:

### 🔹 Key Performance Indicators (KPIs)
1. **Total Revenue** – Accurately calculated by summing the total price of all pizza orders, representing overall business income.
2. **Average Order Value** – Derived by dividing total revenue by the number of unique orders, showing customer spending behavior.
3. **Total Pizzas Sold** – Measured by summing the quantity field across all orders to reflect product volume sold.
4. **Total Orders Placed** – Calculated using the count of distinct `order_id`, representing unique customer transactions.
5. **Average Pizzas Per Order** – Determined by dividing total pizzas sold by the number of orders, providing insight into average purchase size.

### 📊 Visual Analysis & Trends

1. **Daily Trend for Total Orders**  
   A bar chart visualized daily order volume to uncover patterns such as weekday vs weekend spikes, helping identify high-traffic days.

2. **Hourly Trend for Total Orders**  
   A line chart analyzed order frequency by hour of day, identifying peak business times (e.g., lunch and dinner rush hours).

3. **Sales by Pizza Category**  
   A pie chart displayed each pizza category’s share of total revenue
   
This helped reveal customer preferences and product performance by category.


---

