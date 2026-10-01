# AMU Placement Analytics

A business analytics project analysing student placement outcomes, recruiter activity, company sectors, placement trends, internship associations, academic factors and placement packages using Excel, PostgreSQL, SQL and Power BI.

## Project Overview

This project was developed to demonstrate how structured placement data can be transformed into actionable business insights using relational data modelling, SQL analysis and interactive Power BI reporting.

The analysis examines student information, faculties, companies and placement records to understand placement outcomes, recruiter activity, hiring patterns, academic factors and compensation.

The project combines dataset preparation, relational database development, SQL-based business analysis, KPI development and interactive Power BI dashboard reporting.

## Business Context

The placement process involves multiple interconnected entities:

**Students → Faculties → Placements ← Companies**

The dataset contains information about students, their academic and internship characteristics, faculties, recruiting companies and recorded placement outcomes.

The project focuses on understanding placement performance, recruiter activity, hiring patterns, factors associated with placement outcomes and differences in placement packages.

## Objectives

The main objectives of the project are to:

- Analyse overall placement outcomes and placement rates
- Identify companies with the highest number of recorded placements
- Analyse hiring patterns across different sectors
- Examine placement trends across graduation years
- Compare placement outcomes by internship status
- Analyse placement outcomes across faculties
- Examine differences in average CGPA between placed and non-placed students
- Analyse average placement packages across company tiers
- Compare average packages across faculties
- Analyse the distribution of placement packages
- Develop an interactive Power BI dashboard for placement reporting

## Technology Stack

- **Excel** – Dataset preparation and initial data organisation
- **PostgreSQL / pgAdmin** – Relational database implementation and management
- **SQL** – Business analysis and querying
- **Power BI** – Interactive dashboards and business reporting
- **DAX** – KPI and placement-rate calculations
- **GitHub** – Project documentation and portfolio presentation

## Dataset

The project database contains four interconnected tables:

| Table | Records | Description |
|---|---:|---|
| `students` | 500 | Student academic, demographic and placement information |
| `faculty` | 16 | Faculty reference information |
| `company` | 33 | Recruiter, company tier and sector information |
| `placements` | 294 | Placement records, companies, packages and placement dates |

### Student Data

The `students` table contains:

- Enrollment Number
- Student Name
- CGPA
- Gender
- Faculty Code
- Department
- Aptitude Score
- Certification Count
- Communication Score
- Graduation Year
- Internship Status
- Placement Status

### Faculty Data

The `faculty` table contains:

- Faculty Code
- Faculty Name

### Company Data

The `company` table contains:

- Company ID
- Company Name
- Company Tier
- Sector

### Placement Data

The `placements` table contains:

- Placement ID
- Enrollment Number
- Company ID
- Package LPA
- Placement Date

**File:**

- [AMU Placements Dataset.xlsx](AMU%Placements%Dataset%.xlsx) – project dataset used for database development, SQL analysis and Power BI reporting.

## Data Model

The project uses a relational structure connecting faculties, students, companies and placement records.

### Relationships

**Faculty (1) → Students (*) → Placements (*) ← Company (1)**

The model allows placement records to be analysed alongside student, faculty and company attributes through related tables.

There is no direct Faculty-to-Placements relationship; faculty information is connected to placement records through the students table.

## SQL Analysis

The SQL component was developed around specific business questions related to student placements and recruiter activity.

### 1. Top Hiring Companies

**Business Question:** Which companies hired the highest number of students?

The analysis identified:

- PwC – 20 hires
- Accenture – 17 hires
- Cambay Consulting – 16 hires

### 2. Sector-wise Hiring Analysis

**Business Question:** Which sectors recorded the highest number of placements?

The analysis showed:

- Consulting – 56 hires
- IT Services – 42 hires
- Business Services – 26 hires
- Banking – 24 hires

### 3. Internship and Placement Analysis

**Business Question:** How does placement rate differ by internship status?

Students with internship experience recorded a placement rate of **66.79%**, compared with **48.88%** for students without internship experience.

This represents an association observed in the dataset and does not establish that internship experience caused the difference.

### 4. Graduation Year Placement Trend

**Business Question:** How does the number of placed students vary across graduation years?

| Graduation Year | Placed Students |
|---|---:|
| 2023 | 39 |
| 2024 | 64 |
| 2025 | 119 |
| 2026 | 72 |

The analysis shows variation in recorded placement counts across the observed graduating batches.

### 5. Faculty-wise Placements

**Business Question:** Which faculties recorded the highest number of placements?

The analysis identified:

- Engineering & Technology – 52 placements
- Management Studies & Research – 51 placements
- Commerce – 44 placements

### 6. Company Tier vs Average Package

**Business Question:** How does average placement package vary across company tiers?

| Company Tier | Average Package |
|---|---:|
| Tier 1 | 7.81 LPA |
| Tier 2 | 7.08 LPA |
| Tier 3 | 5.54 LPA |

These figures describe the package differences observed across company tiers in the dataset.

### 7. CGPA and Placement Outcomes

**Business Question:** Does average CGPA differ between placed and non-placed students?

- Placed students – **7.76 average CGPA**
- Non-placed students – **6.93 average CGPA**

The result indicates an association between CGPA and placement status within the dataset and should not be interpreted as evidence of causation.

### 8. Average Package by Faculty

**Business Question:** Which faculties recorded the highest average placement packages?

The analysis identified:

- Engineering & Technology – 7.87 LPA
- Management Studies & Research – 7.86 LPA
- Medicine – 7.66 LPA

## Power BI Dashboard

The SQL analysis was translated into an interactive Power BI dashboard consisting of four analytical pages.

### Page 1 – Placement Overview

The overview page presents:

- Total Students
- Placed Students
- Placement Rate
- Average Package
- Highest Package
- Placement trend by graduation year
- Placed vs Non-placed students
- Placement rate by faculty

### Page 2 – Hiring & Recruiters

This page focuses on recruiter and company activity:

- Top Hiring Companies
- Hiring by Sector
- Placements by Company Tier
- Total Recruiters
- Company-wise Placement Distribution

### Page 3 – Student & Placement Factors

This page examines student-level characteristics associated with placement outcomes:

- Internship Status vs Placement Rate
- Average CGPA: Placed vs Non-placed
- Placement Rate by Faculty

### Page 4 – Package Analysis

This page focuses on placement compensation:

- Average Package by Company Tier
- Average Package by Faculty
- Package Distribution
- Highest Package by Company

### Dashboard Files

- [Power BI Dashboard](PowerBI/AMU_Placement_Analytics.pbix) – Power BI project file
- [Dashboard Overview](PowerBI/Dashboard_Overview.png) – dashboard preview
- [Power BI Dashboard PDF](PowerBI/PowerBI_Dashboard.pdf) – exported dashboard report

## Key Analytical Themes

### Placement Performance

- Overall placement outcomes
- Placement trends by graduation year
- Faculty-level placement rates

### Recruiter Analysis

- Hiring concentration by company
- Sector-wise hiring
- Company-tier distribution

### Student Factors

- Internship status
- CGPA
- Faculty
- Placement outcomes

### Compensation Analysis

- Average package
- Package distribution
- Company-tier differences
- Faculty-level package differences

## Project Workflow

**Excel Dataset → PostgreSQL Database → SQL Analysis → Power BI Dashboard**

The project begins with structured placement data, which is organised into related tables and analysed using SQL. The resulting business questions and metrics are then translated into interactive Power BI visualisations.

## Analytical Note

The findings presented in this project describe patterns observed within the available dataset.

Relationships between variables such as internship status, CGPA and placement outcomes are presented as **associations rather than causal relationships**. The analysis is intended to demonstrate the application of business analytics techniques to placement data rather than establish causal effects.

## Project Purpose

This project demonstrates an end-to-end business analytics workflow involving:

- Relational data modelling
- Data organisation
- SQL querying
- KPI development
- Business question formulation
- Interactive dashboard design
- Analytical interpretation
- Data-driven reporting
