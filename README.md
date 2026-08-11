# E-Commerce Sales & Profitability Analysis

An interactive Power BI dashboard analyzing e-commerce sales, profitability, product performance, regional performance, and monthly trends using 9,995 sales records.

## 📊 Dashboard

The dashboard provides an interactive view of:

- Total Revenue
- Total Profit
- Total Orders
- Average Order Value
- Total Customers
- Monthly Revenue & Profit Trends
- Revenue & Profit by Category
- Top 10 Products by Revenue & Profit
- Bottom 10 Products by Profit
- Revenue & Profit by Region
- Interactive Year, Region, and Category filters

## 🛠️ Tools & Technologies

- **Power BI** — Dashboard development and data visualization
- **PostgreSQL** — Data storage and SQL analysis
- **SQL** — Business analysis and aggregations
- **CSV** — Source dataset
- **DAX** — Measures and calculations

## 📁 Dataset

The project uses an e-commerce Superstore-style dataset containing **9,995 transaction records**.

Key fields include:

- Order ID
- Order Date
- Ship Date
- Customer ID
- Customer Name
- Segment
- Country
- City
- State
- Region
- Product ID
- Category
- Sub-Category
- Product Name
- Sales
- Quantity
- Discount
- Profit

## 🔍 Analysis Performed

The analysis focused on answering key business questions:

1. What is the overall revenue and profit?
2. How does performance change over time?
3. Which product categories generate the most revenue?
4. Which products generate the highest revenue?
5. Which products generate the lowest profit?
6. Which regions perform best?
7. Are high-revenue products always profitable?
8. How does profitability vary across categories and regions?

## 💡 Key Insights

- West was the strongest-performing region by revenue and profitability.
- Central showed comparatively weaker profitability.
- Several high-revenue products generated negative profit.
- Revenue and profitability varied significantly across product categories.
- Product-level analysis revealed that strong sales volume does not always translate into strong profitability.

## 📈 Dashboard Features

The Power BI dashboard includes:

- KPI cards for high-level performance monitoring
- Monthly revenue and profit trend analysis
- Category-level comparison
- Top and bottom product analysis
- Regional performance analysis
- Interactive slicers for Year, Region, and Category
- Business-focused visual design for quick decision-making

## 🗄️ Data Preparation

The dataset was imported into PostgreSQL and stored in a structured `sales` table.

SQL queries were used to calculate:

- Total revenue
- Total profit
- Total orders
- Customer counts
- Average order value
- Product-level revenue and profit
- Regional performance
- Category performance

The resulting analysis was connected to Power BI for visualization.

## 🎯 Business Value

This dashboard can help business teams:

- Monitor overall sales performance
- Identify profitable and unprofitable products
- Compare regional performance
- Track changes in revenue and profitability
- Identify products requiring pricing or cost review
- Support data-driven business decisions

## 📌 Project Structure

```text
E-Commerce-Sales-Analysis/
│
├── E-Commerce Sales & Profitability Dashboard.pbix
├── Superstore_data_UTF8.csv
├── Dashboard Screenshot.png
└── README.md