# Manufacturing Downtime Analysis 

Project Description:

This project focuses on analyzing downtime across manufacturing lines to identify performance bottlenecks, reveal key factors influencing interruptions, and enhance decision-making using Power BI dashboards.
 
Objectives:
1.	Analyze downtime patterns across lines, operators, and products.
2.	Identify top downtime causes and quantify their impact on production.
3.	Develop interactive dashboards in Power BI for management insights.
4.	Support process improvement through data-driven visualization and KPIs.
Scope:
Covers all downtime events recorded across lines, operators, products, and factors, as well as temporal trends (by date).

--------------------------------------------------
Project Team Members 

Malek Mohammed hamed ( Team leader) 

Azza Amen Mohamed Amen

Rana Wagih Hussein

Islam Mohamed Yassein 

Mahmoud Elaraby Mohamed 

Nada Abdullah Abdullah

______________________________________________________________
Task Assignment & Roles:

Team / Function	Key Responsibilities	Tools Used	Assigned Members
Data Engineering / Data Preparation	- Clean raw data and build data pipelines.
- Create structured, reliable data models for analysis.	SQL, Python, Excel	Azza Amen, Mahmoud Elaraby (all the team involved) 
Data Analysis / Business Analysis	- Explore data and answer business-driven questions.
- Identify KPIs, trends, and anomalies.
- Collaborate with stakeholders to refine business questions.	Python, SQL, Excel, Power BI	Malek Mohammed (Lead), Rana Wagih, Islam Mohamed (Business Insights)
Data Visualization / BI	- Develop dashboards and reports for decision-makers.
- Focus on storytelling and accessible visual insights.	Power BI, Tableau	Islam Mohamed, Nada Abdullah, Azza Amen (Support)
Documentation / Project Management	- Manage project documentation and coordination.
- Track deliverables, ensure alignment with goals.
- Prepare reports and presentations.	—	Malek Mohammed (Lead), Mahmoud Elaraby (Support)


-------------------------------------

Project Plan – Manufacturing Downtime Analysis
Phase	Tasks	Duration	Milestone
1 – Data Collection	Gather downtime logs, machine details, shift schedules, operator info, and maintenance records	Week 1	Raw dataset collected
2 – Data Cleaning & Transformation	Handle missing timestamps, remove duplicates, standardize downtime reasons, format date/time, merge with dimension tables (machine, shift, operator)	Week 2	Cleaned and transformed dataset ready
3 – Data Modeling	Build relationships between Fact_Downtime, Dim_Machine, Dim_Shift, Dim_Operator, and Dim_Line tables; create calculated columns and DAX measures (e.g., Total Downtime, Avg Downtime, OEE)	Week 3	Data model and key metrics established
4 – Dashboard Development	Design Power BI dashboards showing downtime by machine, line, shift, reason, and operator; integrate KPIs 	Week 4	First version of Power BI dashboard ready
5 – Review & Refinement	Validate data accuracy, enhance visuals, optimize DAX measures, apply consistent color themes, and add interactivity (filters, drill-throughs)	Week 5	Final, polished dashboard completed
6 – Presentation & Documentation	Create project documentation (methodology, insights, recommendations), prepare presentation slides, and present findings to stakeholders	Week 6	Project completed and presented
________________________________________



 Line productivity: The core sheet  it tracks production runs on each manufacturing
 line.
 Products : A reference/crosswalk table with product details.
 Downtime factors :A lookup table of reasons why a production line might stop
 Line downtime :A log of actual downtime events.
 Maintenance log :  A log of maintenance activities on production lines

 

