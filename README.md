# 🏭 Manufacturing Downtime Analysis and Performance Optimization

## 📘 Project Overview
This project focuses on analyzing **downtime across manufacturing lines** to identify performance bottlenecks, reveal key factors influencing interruptions, and enhance decision-making through **Power BI dashboards**.

### 🎯 Objectives
1. Analyze downtime patterns across lines, operators, and products.  
2. Identify top downtime causes and quantify their impact on production.  
3. Develop interactive dashboards in Power BI for management insights.  
4. Support process improvement through data-driven visualization and KPIs.

### 📌 Scope
Covers all downtime events recorded across lines, operators, products, and factors, as well as temporal trends (by date, shift, or hour).

---

## 🗓️ Project Plan – Manufacturing Downtime Analysis

| **Phase** | **Tasks** | **Duration** | **Milestone** |
|------------|------------|--------------|----------------|
| **1 – Data Collection** | Gather downtime logs, machine details, shift schedules, operator info, and maintenance records | Week 1 | Raw dataset collected |
| **2 – Data Cleaning & Transformation** | Handle missing timestamps, remove duplicates, standardize downtime reasons, format date/time, merge with dimension tables (machine, shift, operator) | Week 2 | Cleaned and transformed dataset ready |
| **3 – Data Modeling** | Build relationships between Fact_Downtime, Dim_Machine, Dim_Shift, Dim_Operator, and Dim_Line tables; create calculated columns and DAX measures (e.g., Total Downtime, Avg Downtime, OEE) | Week 3 | Data model and key metrics established |
| **4 – Dashboard Development** | Design Power BI dashboards showing downtime by machine, line, shift, reason, and operator; integrate KPIs | Week 4 | First version of Power BI dashboard ready |
| **5 – Review & Refinement** | Validate data accuracy, enhance visuals, optimize DAX measures, apply consistent color themes, and add interactivity (filters, drill-throughs) | Week 5 | Final, polished dashboard completed |
| **6 – Presentation & Documentation** | Create project documentation (methodology, insights, recommendations), prepare presentation slides, and present findings to stakeholders | Week 6 | Project completed and presented |

---

## 👥 Task Assignment & Roles

| **Team / Function** | **Key Responsibilities** | **Tools Used** | **Assigned Members** |
|----------------------|--------------------------|----------------|----------------------|
| **Data Engineering / Data Preparation** | - Clean raw data and build data pipelines.<br>- Create structured, reliable data models for analysis. | SQL, Python, Excel | Azza Amen, Mahmoud Elaraby (all team involved) |
| **Data Analysis / Business Analysis** | - Explore data and answer business-driven questions.<br>- Identify KPIs, trends, and anomalies.<br>- Collaborate with stakeholders to refine business questions. | Python, SQL, Excel, Power BI | **Malek Mohammed (Lead)**, Rana Wagih, Islam Mohamed (Business Insights) |
| **Data Visualization / BI** | - Develop dashboards and reports for decision-makers.<br>- Focus on storytelling and accessible visual insights. | Power BI, Tableau | Islam Mohamed, Nada Abdullah, Azza Amen (Support) |
| **Documentation / Project Management** | - Manage project documentation and coordination.<br>- Track deliverables and ensure alignment with goals.<br>- Prepare reports and presentations. | — | **Malek Mohammed (Lead)**, Mahmoud Elaraby (Support) |

---

## ⚠️ Risk Assessment & Mitigation Plan

| **Risk** | **Impact** | **Solution / Mitigation** |
|-----------|-------------|-----------------------------|
| Incomplete or missing downtime data | Leads to inaccurate analysis and unreliable insights | Communicate with data owners early to ensure full data extraction and verify completeness before modeling |
| Poor data quality (duplicates, missing values, incorrect timestamps) | Skewed KPIs and wrong downtime patterns | Perform thorough data cleaning, validation, and profiling before loading into Power BI |
| Data integration issues between tables | Incorrect relationships causing wrong aggregations | Standardize column names, create unique IDs, and validate joins carefully |
| Errors in DAX calculations or data modeling | Misleading KPIs (OEE, MTTR, MTBF) | Test all measures manually with small samples and review with a peer or supervisor |
| Performance issues in Power BI | Slow dashboard loading and poor user experience | Optimize data model (star schema, reduce visuals per page, use aggregations) |
| Time constraints | Project delays and missed deadlines | Set mini-milestones for each week and track progress closely |
| Stakeholder misalignment on KPIs or visuals | Rework and wasted effort | Share early prototypes for feedback and confirm KPI definitions upfront |
| Limited access to factory or operational data | Incomplete understanding of downtime causes | Use anonymized or partial datasets and document all assumptions |
| Misinterpretation of analysis results | Wrong business decisions | Add clear explanations, KPI definitions, and visual tooltips for context |
| Data or file loss | Project disruption or rework | Maintain frequent backups of datasets and Power BI files in cloud storage |

---

## 📊 Key Performance Indicators (KPIs)

- **Total Downtime (Minutes/Hours)**  
- **Downtime % by Line**  
- **Top Downtime Reasons (%)**  
- **Downtime Frequency by Factor**  
- **Average Downtime per Event**  
- **Downtime Trend (Week-over-Week / Month-over-Month)**  
- **Units Lost due to Downtime**  
- **Downtime by Shift / Operator / Line**

---

## 🧰 Technology Stack Summary

| **Tool** | **What It Was Used For** |
|-----------|--------------------------|
| **Excel** | Collected and stored the raw downtime records, including machine, line, shift, and reason data. |
| **SQL** | Queried and extracted downtime and production data from databases; used for filtering, joining tables, and initial data validation. |
| **Python (Pandas)** | Performed advanced data cleaning, preprocessing, and exploratory data analysis before visualization. |
| **Power Query** | Transformed and shaped the data inside Power BI — handled missing values, corrected data types, and standardized formats. |
| **Power BI (DAX)** | Built data models, created calculated KPIs such as OEE, MTTR, and MTBF, and established relationships between tables. |
| **Power BI (Visualization)** | Designed interactive dashboards to visualize downtime trends, root causes, and production efficiency. |
| **GitHub** | Stored project files, Power BI reports, Python scripts, and documentation for version control and collaboration. |

---

## 🗄️ Database Design

- **Fact Table:** `Fact_Line_Downtime`  
  (includes downtime duration, units lost, factor keys, etc.)

- **Dimension Tables:**
  - `Dim_Line` — Line details  
  - `Dim_Product` — Product information  
  - `Dim_Operator` — Operator details  
  - `Dim_Date` — Date/time attributes  
  - `Dim_Downtime_Factor` — Cause or category of downtime  

### 🧩 Schema
Relationships follow a **Star Schema**,  
where `Fact_Line_Downtime` connects to all dimension tables through their keys.

---

## 📈 Expected Deliverables
- Clean and validated downtime dataset  
- Star schema data model in Power BI  
- Interactive dashboard with KPIs and filters  
- Documentation and presentation slides for stakeholders  

---

## 🏁 Final Outcome
A comprehensive **Power BI dashboard** providing management with data-driven insights into downtime performance, root cause identification, and actionable strategies for operational efficiency.

---
