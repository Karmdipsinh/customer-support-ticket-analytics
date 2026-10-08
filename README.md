# IT Support Ticket Analytics using SQL

## Project Overview

This project analyzes IT support ticket data using MySQL and SQL to generate business-oriented insights about customer support operations.

The analysis focuses on support tickets, customers, support agents, ticket categories, SLA breaches, and resolution performance.

## Objectives

- Analyze customer support ticket trends
- Identify open and unresolved tickets
- Analyze ticket priority and categories
- Measure SLA breaches
- Evaluate support agent performance
- Analyze customer ticket activity
- Calculate average ticket resolution time
- Practice advanced SQL concepts

## Technologies Used

- MySQL
- SQL
- MySQL Workbench

## Database Structure

The database contains four main tables:

### Agents
Stores support agent information.

### Customers
Stores customer information.

### Tickets
Stores support ticket details including status, priority, category, creation date, resolution date, SLA breach status, customer, and agent relationships.

### Ticket Comments
Stores comments associated with support tickets.

## Project Structure

```text
IT-Support-Ticket-SQL/
│
├── schema/
│   ├── 01_create_agents.sql
│   ├── 02_create_customers.sql
│   ├── 03_create_tickets.sql
│   └── 04_create_ticket_comments.sql
│
├── queries/
│   ├── level1_select_where.sql
│   ├── level2_groupby_aggregations.sql
│   ├── level3_joins.sql
│   ├── level4_window_functions.sql
│   ├── level5_ctes.sql
│   └── custom_business_analysis.sql
│
└── README.md
```

## SQL Analysis

### Level 1 — Filtering

Used:

- SELECT
- WHERE
- AND
- ORDER BY
- LIMIT

Examples include finding open tickets, critical tickets, SLA-breached tickets, and unresolved tickets.

### Level 2 — Aggregations

Used:

- COUNT()
- SUM()
- AVG()
- GROUP BY
- HAVING

Used to analyze ticket volume and support performance.

### Level 3 — Joins

Used:

- INNER JOIN
- LEFT JOIN

Used to combine customer, agent, and ticket information.

### Level 4 — Window Functions

Used for ranking and analyzing records across groups.

Examples:

- ROW_NUMBER()
- RANK()
- PARTITION BY

### Level 5 — CTEs

Common Table Expressions were used to structure complex SQL analysis into readable steps.

## Business Analysis Queries

Additional business-oriented SQL analysis was added to make the project more relevant to real-world Product/Data Analyst work.

### 1. SLA Breach Percentage

Calculates the percentage of support tickets that breached their SLA.

### 2. Agent-wise Ticket Performance

Analyzes total tickets and resolved tickets handled by each support agent.

### 3. Category-wise Ticket Analysis

Analyzes ticket volume, resolved tickets, and SLA breaches by category.

### 4. Customer-wise Ticket Count

Identifies customers who generated the highest number of support tickets.

### 5. Average Resolution Time

Calculates the average time taken to resolve support tickets.

## Key Business Questions

The project answers questions such as:

- How many support tickets are currently open?
- How many tickets have breached SLA?
- Which agents resolve the most tickets?
- Which ticket categories have the highest workload?
- Which customers raise the most support tickets?
- What is the average ticket resolution time?
- Which support areas require further attention?

## How to Run

### 1. Create the database

```sql
CREATE DATABASE support_db;
USE support_db;
```

### 2. Execute schema files

Run the files in this order:

```text
01_create_agents.sql
02_create_customers.sql
03_create_tickets.sql
04_create_ticket_comments.sql
```

### 3. Execute analysis queries

Run the SQL files inside the `queries` folder using MySQL Workbench.

## Skills Demonstrated

- SQL
- MySQL
- Relational Database Concepts
- Data Analysis
- Business Analysis
- Data Aggregation
- Joins
- CTEs
- Window Functions
- Problem Solving

## Project Purpose

The project was created to practice SQL-based data analysis and understand how support-ticket data can be transformed into useful business insights for decision-making.
