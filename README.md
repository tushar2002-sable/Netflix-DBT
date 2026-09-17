# Netflix Data Transformation Project

A data transformation and analytics project built using **dbt and Snowflake** to transform, test, document, and organize Netflix movie and rating data into analytics-ready datasets.

## 📌 Project Overview

This project demonstrates an end-to-end **ELT workflow** using dbt and Snowflake.

Raw Netflix-related datasets are loaded into Snowflake and transformed using dbt models. The project includes staging, transformation, testing, documentation, and analytical models.

### Architecture

```text
Raw Data
   ↓
Snowflake
   ↓
dbt Staging Models
   ↓
Data Transformation
   ↓
Analytical Models
   ↓
Analytics / Reporting
```

## 🛠️ Technologies Used

* **dbt Core**
* **Snowflake**
* **SQL**
* **Python**
* **Git & GitHub**

## 📂 Project Structure

```text
Netflix-DBT/
│
├── models/
│   ├── staging/
│   ├── intermediate/
│   └── marts/
│
├── snapshots/
│
├── seeds/
│
├── macros/
│
├── tests/
│
├── analyses/
│
├── dbt_project.yml
│
└── README.md
```

## 🔄 dbt Workflow

The project follows a structured dbt transformation workflow:

1. Load raw data into Snowflake.
2. Create staging models to clean and standardize source data.
3. Build transformation models using SQL.
4. Create analytical models for downstream reporting.
5. Apply dbt tests to validate data quality.
6. Use snapshots to track changes in data over time.
7. Document models and data sources.
8. Execute transformations using dbt.

## 📊 Data Models

The project works with Netflix-related datasets including:

* Movies
* Ratings
* Tags
* Users
* Additional transformed datasets

The models transform raw data into structured datasets suitable for analytics and reporting.

## 🧪 Data Quality Testing

dbt tests are used to validate the data and improve reliability.

Examples include:

* `unique`
* `not_null`
* Referential integrity
* Custom data validation tests

Run tests using:

```bash
dbt test
```

## ▶️ Running the Project

After configuring your Snowflake connection in `profiles.yml`, install dependencies:

```bash
dbt deps
```

Run all dbt models:

```bash
dbt run
```

Run data quality tests:

```bash
dbt test
```

Run models and tests together:

```bash
dbt build
```

Generate documentation:

```bash
dbt docs generate
```

Start the documentation server:

```bash
dbt docs serve
```

## 🔐 Configuration

The Snowflake connection is configured through `profiles.yml`.

**Credentials and secrets are not included in this repository.**

Before running the project locally, configure your own Snowflake credentials.

## 🎯 Key Learning Outcomes

Through this project, I practiced:

* Building ELT pipelines using dbt
* SQL-based data transformations
* Snowflake data warehousing
* dbt staging and analytical models
* Data quality testing
* dbt snapshots
* Reusable SQL macros
* Dependency management using `dbt deps`
* Git and GitHub version control
* Data modeling for analytics

## 👨‍💻 Author

**Tushar Sable**

GitHub: [@tushar2002-sable](https://github.com/tushar2002-sable)

