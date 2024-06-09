# Data Warehouse Store Project

## Introdution

This project aims to showcase the knowlegde acquired through study sections. Here I used some of the most popular fuctions presented on SQL database systems, including the creation and schema definition of tables; permission management and the process behind the usage of the data integration tool, in this case, I used [AirByte](https://airbyte.com), which was deployed using docker composer inside a virtual machine.

The goal of the project was to comprehend all the infrastructe required to build a simple on-premisses Data Warehouse as well as learn about some of popular ETL tools in the industry.

## Project Overview

* **Purpose:** This project attempts to reproduce challenges often faced when building a Data Warehouse. The main goal of this project is to showcase skills acquired during studies.
* **Technologies:**
    * Database: MySQL
    * Data Integration: Airbyte
    * Operational System: Linux (RHEL)
* **Data Sources:** For the purpose of this project, a fictitious OLTP system was simulated with an small amount of data, to provide means to implement our ETL sulution.

## Getting Started

As mentioned above, this project was not build with the premise of being replicable, therefore, if you try to apply the codes and other configurations defined in this repository, it may not work as expected, unless you make some substantial modifications with the content of this project. However, I'll briefly explain the macroprocess I used to start my project 😄.

### Prerequisites

**MySQL:**
- Ensure a running MySQL instance exists, along with dedicated database established for the data warehouse.
- Create a new user as shown in the file: [`sql-files/1. source/1.2 creating_user.sql`](https://github.com/xpcosmos/data-warehouse-store/blob/main/sql-files/1.%20source/1.2%20creating_user.sql)
- Create the same structure of tables presented in the file [`sql-files/1. source/1.1 creating_tables.sql`](https://github.com/xpcosmos/data-warehouse-store/blob/main/sql-files/1.%20source/1.1%20%20creating_tables.sql)
**Airbyte:**
- Create an intrance of the AirByte on your machine using Docker Desktop or Docker Compose. The [installation guide](https://docs.airbyte.com/using-airbyte/getting-started/?_gl=1*tbs8gi*_gcl_aw*R0NMLjE2NjI1[…]vy1Jg9KFWpD289ItJx-G1t_wNseJkR918bNkOOX59yyqlMUaAiAmEALw_wcB) is presented in their website and the installation process is beyond the scope of this project.
- Grant to AirByte all required connections to your Database.       


## Additional Considerations

Last but not least, I would like to thank you for read into this project and if you some suggestion, want to share your knowlegde, please, get in touch 😃, I do believe that everyone has something to share.

# Contact Information

<p align="left">
  <a href="malito:mikeias.d.s.o@gmail.com" alt="Gmail">
  <img src="https://img.shields.io/badge/-Gmail-FF0000?style=for-the-badge&labelColor=FF0000&logo=gmail&logoColor=white&link=LINK-DO-SEU-EMAIL" /></a>

  <a href="https://www.linkedin.com/in/mikeias-d-s-o/" alt="Linkedin">
  <img src="https://img.shields.io/badge/-Linkedin-0e76a8?style=for-the-badge&logo=Linkedin&logoColor=white&link=LINK-DO-SEU-LINKEDIN" /></a>

</p>  
