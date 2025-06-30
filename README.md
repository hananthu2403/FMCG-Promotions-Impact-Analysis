FMCG Promotions Impact Analysis | SQL & Power BI Project | AtliQ Mart

🛒 Project Overview

This project evaluates the effectiveness of promotional campaigns (Diwali 2023 & Sankranti 2024) conducted by AtliQ Mart, a leading FMCG retailer with 50+ stores across South India. Using SQL and Power BI, actionable insights were generated to assess revenue uplift, product performance, and promotional strategies — supporting data-driven decisions for future campaigns.

🎯 Business Objectives
- Identify top and underperforming promotions

- Analyze store, city, and product-wise performance

- Evaluate the impact of different promotion types (Discounts, BOGOF, Cashback)

- Track high-value products offered under heavy discounts

- Compare revenue before and after promotional campaigns

🛠️ Tools & Technologies

SQL (MySQL): Data cleaning, transformation, and ad-hoc analysis

Power BI: Interactive dashboards and visualizations

Excel: Data exports and pre-processing

DAX: KPI & growth metric calculations

🗂️ Dataset Description
Table Name	Description
dim_campaigns	Promotional campaign details (Diwali, Sankranti)
dim_products	Product details with categories
dim_stores	Store IDs and corresponding cities
fact_events	Sales data before and after promotions

💡 Key Insights
- Top 10 stores by incremental revenue

- Bottom 10 stores by incremental sold units (ISU)

- Best-performing promotion types

- Product categories with highest ISU%

- City-wise revenue trends

- High-value products under BOGOF promotion

- Campaign-wise revenue comparison (before vs after promotions)

📊 Dashboard Preview
The Power BI dashboard features:
✅ Executive summary KPIs
✅ Store & city performance analysis
✅ Promotion type effectiveness
✅ Product & category performance deep dive

📁 Repository Structure
FMCG-Promotions-Impact-Analysis/  
│  
├── FMCG/  
│   ├── Ad-hoc/  
│   │   ├── Product IR %.xlsx  
│   │   ├── Category - ISU% - Rank.xlsx  
│   │   ├── Campaign wise Revenue.xlsx  
│   │   ├── Citywise store Count.xlsx  
│   │   └── High-value BOGOF Products.xlsx  
│   ├── dim_campaigns.xlsx  
│   ├── dim_products.xlsx  
│   ├── dim_stores.xlsx  
│   ├── fact_events.xlsx  
│   ├── retail_events_db.sql  
│   └── insights/  
│       ├── Promotion Type Analysis/  
│       │   ├── Compare Discount vs. BOGOF vs. Cashback Performance.csv  
│       │   ├── Bottom 2 Promotion Types by ISU.csv  
│       │   └── Top 2 Promotion Types by Incremental Revenue.csv  
│       ├── Product & Category Analysis/  
│       │   ├── Correlation Between Promotion Type & Product Category.csv  
│       │   ├── Bottom 5 Products by Incremental Revenue.csv  
│       │   ├── Top 5 Products by Incremental Revenue.csv  
│       │   └── Product Categories with Highest Sales Lift.csv  
│       └── Store Performance Analysis/  
│           ├── Citywise store performance comparison.csv  
│           ├── Bottom 10 stores by ISU.csv  
│           └── Top 10 stores by Incremental Revenue.csv  
├── FMCG Promotions Impact Analysis.pbix  
├── Promotions_Analysis.sql  
└── README.md  

📝 Learnings & Reflections
- Writing optimized SQL for real-world business scenarios

- Transforming raw data into actionable insights

- Designing clean, executive-friendly Power BI dashboards

- Presenting findings effectively to drive business decisions

🔗 Connect with Me
linkedin.com/in/hanisha-ananthula-432284242/


