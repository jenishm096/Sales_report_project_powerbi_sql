# Sales_report_project_powerbi_sql

Sales Analysis Project - Readme

This project is focused on analyzing sales data extracted from the AdventureWorksDW2019.bak database using SQL and Power BI. The main goal is to provide insights into sales performance and trends, facilitating data-driven decision-making processes.

**Dataset**
The dataset comprises several tables from the AdventureWorksDW2019.bak database:

  DimDate

  DimCustomer

  DimProduct

  FactInternetSales

**Cleaning and Preprocessing**

The SQL scripts provided here demonstrate the cleaning and preprocessing steps performed on each table:

DimDate: The script cleans the date-related data, including filtering for years greater than 2019 and formatting date-related fields.
DimCustomer: It cleans customer-related data, including joining city information from DimGeography and formatting gender.
DimProduct: Cleans product-related data, including joining subcategory and category information from related tables and formatting product status.
FactInternetSales: Extracts internet sales data, filtering for the past two years, and selects relevant columns.

**Integration with Power BI**

The cleaned and processed data from SQL is then imported into Power BI for visualization and analysis. Power BI provides interactive dashboards and reports, enabling users to explore the data and uncover insights effectively.

**Repository Structure**

SQL Scripts: Contains the SQL scripts used for data extraction, cleaning, and preprocessing.
Power BI Reports: Contains the Power BI files (.pbix) showcasing the visualizations and analysis.
Readme.md: Provides an overview of the project and instructions for replication.
