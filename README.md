# FMCG-Promotions-Impact-Analysis
Brief project summary


🛒 FMCG Promotions Impact Analysis | SQL & Power BI Project | AtliQ Mart
📊 Project Overview
This project analyzes the effectiveness of promotional campaigns (Diwali 2023 & Sankranti 2024) conducted by AtliQ Mart, a leading FMCG retailer with 50+ stores across South India. Using SQL and Power BI, the project provides actionable insights into revenue uplift, product performance, and promotional strategies to support data-driven decision-making for future campaigns.

🎯 Business Objective
To evaluate:

  - Which promotions performed well and which did not

  - Store, city, and product-wise performance during promotions

  - Impact of promotion types (Discounts, BOGOF, Cashback) on sales

  - High-value products under heavy discounts

  - Revenue comparison before and after campaigns

🛠️ Tools & Technologies

SQL (MySQL) - Data Cleaning, Transformation & Ad-hoc Analysis

Power BI - Interactive Dashboards & Visualizations

Excel - Data exports & Pre-processing

DAX - KPI & Growth Metric Calculations

🗂️ Dataset Description

The project uses a structured database containing:

Table	Description
dim_campaigns	Details of promotional campaigns (Diwali, Sankranti)
dim_products	Product details with categories
dim_stores	Store IDs and corresponding cities
fact_events	Sales data before and after promotions

💡 Key Insights Generated
  - Top 10 Stores by Incremental Revenue

  - Bottom 10 Stores by Incremental Sold Units (ISU)

  - Best Performing Promotion Types

  - Product Categories with highest ISU%

  - City-wise Revenue Trends

  - High-Value BOGOF Products

  - Campaign-wise Revenue Comparison (Before & After)

📊 Dashboard Preview
The interactive Power BI dashboard includes:

✅ Executive Summary KPIs
✅ Store & City Performance Analysis
✅ Promotion Type Effectiveness
✅ Product & Category Deep Dive


📁 Repository Structure
FMCG-Promotions-Impact-Analysis/

📁 FMCG/
  │   ├── 📁 Ad-hoc/
  │   │        ├── Product IR %.xlsx
  │   │        ├── Category - ISU% - Rank.xlsx
  │   │        ├── Campaign wise Revenue.xlsx
  │   │        │── Citywise store Count.xlsx
  │   │        ├── High-value BOGOF Products.xlsx
  │   ├── dim_campaigns.xlsx
  │   ├── dim_products.xlsx
  │   ├── dim_stores.xlsx
  │   ├── fact_events.xlsx
  │   ├── retail_events_db.sql
  │   └── 📁 insights/
  │              ├── 📁 Promotion Type Analysis/
  │                        ├── Compare Discount vs. BOGOF vs. Cashback Performance.csv
  │                        ├── Bottom 2 Promotion Types by Incremental Sold Units (ISU).csv
  │                        ├── Top 2 Promotion Types by Incremental Revenue.csv
  │              ├── 📁 Product & Category Analysis/
  │                        ├── Correlation Between Promotion Type & Product Category.csv
  │                        ├── Bottom 5 Products by Incremental Revenue.csv
  │                        ├── Top 5 Products by Incremental Revenue.csv
  │                        ├── Product Categories with Highest Sales Lift.csv
  │              ├── 📁 Store Performance Analysis/
  │                        ├── Citywise store perf comp.csv
  │                        ├── Bottom 10 stores by Incremental Sold Units (ISU).csv
  │                        ├── Top 10 stores by Incremental Revenue (IR).csv
  │
  ├── FMCG Promotions Impact Analysis.pbix
  ├──Promotions_Analysis.sql
  └── README.md

📝 Learnings & Reflection

This project enhanced my skills in:

- Writing optimized SQL queries for real-world business questions
- Transforming raw data into actionable insights
- Designing clean, executive-friendly Power BI dashboards
- Communicating findings effectively for decision-makers

🔗 Connect with Me
https://www.linkedin.com/in/hanisha-ananthula-432284242/



