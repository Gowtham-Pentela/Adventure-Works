# Adventure Works Data Engineering Project

## Overview
This project demonstrates a complete Data Engineering pipeline using Microsoft Azure services with the Adventure Works dataset. The pipeline covers data ingestion, transformation, and serving, utilizing Azure Data Factory, Azure Databricks, Azure Data Lake Gen2, and Azure Synapse Analytics. The goal of the project is to efficiently process and visualize the dataset for analytical purposes.

## Dataset Details
The dataset consists of 10 CSV files:
1. `calendar.csv` - Contains date-related information.
2. `customers.csv` - Includes customer details.
3. `product_categories.csv` - Provides product category information.
4. `product_sub_categories.csv` - Lists product subcategories.
5. `products.csv` - Contains product-level details.
6. `returns.csv` - Records product return transactions.
7. `sales2015.csv` - Sales data for the year 2015.
8. `sales2016.csv` - Sales data for the year 2016.
9. `sales2017.csv` - Sales data for the year 2017.
10. `territories.csv` - Details of sales territories.

## Architecture and Workflow
### 1. Data Ingestion
- **Service Used:** Azure Data Factory (ADF)
- **Approach:**
  - Implemented dynamic data extraction from GitHub.
  - Utilized looping and lookup activities to iterate through multiple datasets.
  - Configured pipelines to fetch and store raw data into Azure Data Lake Gen2.

### 2. Data Transformation & Analysis
- **Service Used:** Azure Databricks & Azure Data Lake Gen2
- **Approach:**
  - Loaded raw data from Azure Data Lake Gen2.
  - Performed data cleaning, formatting, and transformations using PySpark.
  - Merged sales data from different years to create a consolidated sales dataset.
  - Handled missing values and ensured data consistency across all tables.
  - **Performed Big Data Analysis**: Generated various visualizations using PySpark to analyze trends and patterns within the data.

#### Sample Visualizations
1. **Sales Trend**
   ![Sales Trend](images\Areachart.png)
2. **Product Category Sales Distribution**
   ![Product Category Sales](images\Piechart.png)
3. **Region Segmentation by Country**
   ![Region Segmentation](images\Barchart.png)

### 3. Data Serving and Visualization
- **Service Used:** Azure Synapse Analytics
- **Approach:**
  - Created an **external table** in Synapse Analytics pointing to the transformed data stored in Azure Data Lake Gen2.
  - Enabled querying of the external table for further analysis and visualization.
  - Data was made available for business intelligence and reporting tools.

## Tools & Technologies Used
- **Azure Data Factory (ADF):** For orchestrating data ingestion pipelines.
- **Azure Data Lake Gen2:** For raw and transformed data storage.
- **Azure Databricks:** For performing data transformations using PySpark.
- **Azure Synapse Analytics:** For serving and querying the transformed data.
- **GitHub:** Source of raw dataset files.
- **PySpark:** For big data analysis and visualizations.

## Key Features Implemented
- **Automated Data Ingestion:** Used lookup and looping in ADF to dynamically pull datasets from GitHub.
- **Scalable Data Processing:** Leveraged Apache Spark on Databricks for efficient large-scale data transformation.
- **Big Data Analytics & Visualization:** Performed exploratory data analysis and visualizations using PySpark.
- **Seamless Data Serving:** External table in Synapse Analytics allows direct querying of transformed data without additional storage overhead.
- **Cloud-based Architecture:** Utilized Azure services to ensure scalability, reliability, and efficiency.

## Future Enhancements
- **Implement Incremental Data Loads:** Instead of full dataset extraction, optimize pipelines to fetch only new or updated records.
- **Enhance Data Transformations:** Apply additional business logic to improve data usability.
- **Integrate BI Tools:** Connect Power BI or Tableau for advanced analytics and visualization.
- **Performance Optimization:** Optimize queries in Synapse Analytics for faster data retrieval.

## Conclusion
This project successfully demonstrates a cloud-based data pipeline for handling real-world datasets. By leveraging Azure services, we efficiently ingested, transformed, and served the Adventure Works dataset, enabling seamless data analysis and reporting.

