# Car Dealer Sales Monitoring

## Overview
This project focuses on designing and implementing a **Business Intelligence (BI)** solution for monitoring car dealership sales. It includes **OLTP schema design, Data Warehousing (DW), ETL processes, and reporting** using MySQL and Pentaho Data Integration.

## Features
- **OLTP Schema:** Designed to store transactional data related to car sales.
- **Data Warehouse (DW):** Implemented using a **snowflake schema** for optimized querying.
- **ETL Pipelines:** Built using **Pentaho Data Integration (PDI)** to transform and load data.
- **SQL Views & Queries:** Pre-defined views for analytics.
- **BI Reports:** Created using **Pentaho Report Designer**.

## Technologies Used
- **Database:** MySQL
- **ETL Tool:** Pentaho Data Integration (PDI)
- **BI Reporting:** Pentaho Report Designer
- **Data Generation:** Python (Faker package)

## Project Structure
```
📂 CarDealer_SalesMonitoring
│-- 📜 README.md  (Project Documentation)
│-- 📜 OLTP_Schema.mwb  (OLTP Schema Model)
│-- 📜 DW_Schema.mwb  (Data Warehouse Schema Model)
│-- 📂 Data_Files/
│   │-- Customers.csv
│   │-- Orders.csv
│   │-- Employees.csv
│   │-- Products.csv
│   │-- Dealers.csv
│-- 📂 ETL_Files/
│   │-- transform_dimension_time.ktr
│   │-- transform_fact_sales.ktr
│   │-- transform_order_customer.ktr
│-- 📂 Reports/
│   │-- sales_report.prpt
│-- 📜 Queries.sql  (SQL Scripts for Views & Reports)
```

## Installation
### 1. Clone the Repository
```sh
git clone https://github.com/yourusername/CarDealer_SalesMonitoring.git
cd CarDealer_SalesMonitoring
```

### 2. Set Up MySQL Database
1. Import the OLTP schema and Data Warehouse schema into MySQL.
2. Load CSV data into respective tables.
3. Execute SQL scripts in `Queries.sql` to generate views.

### 3. Run ETL Pipelines
1. Open **Pentaho Data Integration (PDI)**.
2. Import `.ktr` files and execute transformations.
3. Validate the data in MySQL.

### 4. Generate Reports
1. Open **Pentaho Report Designer**.
2. Import `.prpt` report files.
3. Run and export reports.

## Data Model
### **OLTP Schema**
- **Customers** (id, name, email, location, ...)
- **Orders** (id, customer_id, product_id, order_date, quantity, ...)
- **Employees** (id, name, role, dealer_id, ...)
- **Products** (id, brand, model, price, stock, ...)
- **Car Dealers** (id, name, location, contact, ...)

### **Data Warehouse Schema (Snowflake)**
- **Fact Table:** `fact_sales` (sales transactions, revenue, commission, ...)
- **Dimensions:** `time`, `order_customer`, `order_product`, `employee_dealer`, `product_service`

## SQL Views Example
Example query to extract sales performance by city:
```sql
SELECT city, SUM(quantity_ordered) AS total_sales, SUM(revenue) AS total_revenue
FROM fact_sales
GROUP BY city
ORDER BY total_revenue DESC;
```


### **Contact & Feedback**
For suggestions or contributions, feel free to open an issue or reach out via GitHub.
