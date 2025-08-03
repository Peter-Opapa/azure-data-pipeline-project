# 🌐 Azure Data Engineering Project: End-to-End Medallion Architecture

This project showcases a complete Azure-native data pipeline using the **Medallion Architecture (Bronze → Silver → Gold)** to ingest, transform, and visualize data using tools like **Azure Data Factory (ADF)**, **Databricks**, **Data Lake Gen2**, **Synapse**, and **Power BI**.

---

## 🧰 Technologies Used

| Layer             | Tools & Services                |
|------------------|---------------------------------|
| Ingestion         | Azure Data Factory (ADF)        |
| Storage           | Azure Data Lake Storage Gen2    |
| Processing        | Azure Databricks (PySpark)      |
| Data Modeling     | Delta Lake, Star Schema         |
| Serving           | Azure Synapse Analytics         |
| Visualization     | Power BI                        |

---

## 📁 Project Structure
```
azure-data-pipeline-project/
├── notebooks/ # Databricks Notebooks
│ ├── bronze_ingestion.ipynb
│ ├── silver_transformation.ipynb
│ ├── gold_serving.ipynb
│ └── parameters.ipynb
│
├── images/ # Architecture & Visuals
│ ├── architecture.png
│ ├── adf_pipeline_overview.png
│ ├── adf_linked_services.png
│ ├── adf_dataflows.png
│ └── adf_triggers.png
│
├── dashboards/
│ └── PowerBI_Report.pbix
│
├── scripts/
│ ├── synapse_table_creation.sql
│ └── adf_pipeline_definition.json
│
├── requirements.txt
└── README.md
```
---
