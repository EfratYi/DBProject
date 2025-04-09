# Olympiad

**Efrat Miletzky & Efrat Yishay**

## Table of Contents

### **Phase 1: Design and Build the Database**  

- [📜 Introduction](#introduction)  
- [📊 ERD (Entity-Relationship Diagram)](#erd-entity-relationship-diagram)  
- [📂 DSD (Data Structure Diagram)](#dsd-data-structure-diagram)  
- [📝 SQL Scripts](#sql-scripts)  
- [📊 Data](#data)  
- [💾 Backup](#backup)  

### **Phase 2: Queries and constraints**  
- [🔗 Queries](#-Queries)  

## Phase 1: 
Design and Build the Database

## Introduction
The Olympiad Database is designed to efficiently manage information related to athletes, competitions, venues, and results. This system ensures seamless organization and tracking of essential details such as competition schedules, athlete rankings, sports categories, and venue capacities. By maintaining structured and easily accessible data, the system enhances event coordination, performance analysis, and historical record-keeping for future Olympiad events.

**Purpose of the Database:**

This database serves as a structured and reliable solution for managing Olympiad events by enabling:

 •Efficient Competition Organization – Schedule and manage competitions, ensuring accurate tracking of events, venues, and participants.

 •Athlete Performance Monitoring – Record and analyze athlete rankings, medal achievements, and participation history.

 •Venue and Sport Management – Maintain detailed records of venues, including location, capacity, and assigned sports.

 •Structured Athlete and Country Data – Link athletes to their respective countries, track their progress, and store demographic details.

 •Ticketing and Audience Coordination – Manage ticket sales, pricing, and attendance data for competitions.

**Potential Use Cases:**

 •Olympiad Organizers can efficiently allocate venues, schedule competitions, and track athlete performances.

 •Athletes and Coaches can access competition records, track progress, and analyze past performances.

 •Sports Analysts can retrieve data on sports trends, medal distributions, and athlete statistics.

 •Audience and Ticketing Management ensures smooth ticket distribution and event attendance tracking.

This structured database streamlines Olympiad management, enhancing organization, record-keeping, and accessibility for all involved.

## ERD (Entity-Relationship Diagram)
![image](https://github.com/user-attachments/assets/a13786b5-c262-4ed1-9c62-8c83885ab3d9)

## DSD (Data Structure Diagram)
![DSD](https://github.com/user-attachments/assets/d2b49d11-fa2b-4304-89a2-a6e12675b3b5)

## SQL Scripts
Provide the following SQL scripts:

Create Tables Script - The SQL script for creating the database tables is available in the repository:
📜 [View createTables.sql](stage1/script/createTables.sql)

Insert Data Script - The SQL script for insert data to the database tables is available in the repository:
📜 [View createTables.sql](stage1/script/insertTables.sql)

Drop Tables Script - The SQL script for droping all tables is available in the repository:
📜 [View createTables.sql](stage1/script/dropTables.sql)

Select All Data Script - The SQL script for selectAll tables is available in the repository:
📜 [View createTables.sql](stage1/script/selectTables.sql)

## Data

### First tool: 

using [Mockaroo](https://www.mockaroo.com/) to create csv file

Entering a data to Ticket table
ticket id scope 1-400 📜 [View MOCK_DATA.csv](stage1/mockData/MOCK_DATA.csv)
Entering a data to ticket table

Formula of Ticket ID: this + 400 

<img width="910" alt="Mock" src="https://github.com/user-attachments/assets/3d2e44bb-4ffe-4707-93f5-eecadf41106f" />

<img width="483" alt="dockerMock" src="https://github.com/user-attachments/assets/a3f69cd3-74d2-434b-9a15-d6321189cc0f" />

 results for the command
 
![image](https://github.com/user-attachments/assets/3b231762-b88d-4b66-94a7-1ade6c140eed)
 
![image](https://github.com/user-attachments/assets/477ba7ee-7597-4850-8954-1aca70c14567)


### Second tool:
using [generatedata](https://generatedata.com/) to create csv file

Entering a data to Athlete table
Group Number scope 1-400 📜 [View generatedata.csv](stage1/generateData/generatedata.csv)

![image](https://github.com/user-attachments/assets/6da72513-0028-4a45-bbfb-3d8f323a9655)

![image](https://github.com/user-attachments/assets/633b68f0-391f-41ce-91dc-11a78caf6462)

![image](https://github.com/user-attachments/assets/f91f7d8e-81dd-432a-86b4-2ab377b4f7b6)

results for the command
![image](https://github.com/user-attachments/assets/7a156af1-722a-4859-b87b-7e557e239b1e)

![image](https://github.com/user-attachments/assets/7324fd6a-2b2b-4969-96a3-b24bf0f6e666)

### Third tool: using python to create csv file

the python script:

![image](https://github.com/user-attachments/assets/e9c80db7-2fc7-4478-99a4-db5bc18d9a8a)

the terminal result:

![image](https://github.com/user-attachments/assets/83321167-43fa-403f-84e9-c9e19749c56f)

Group Number scope 1-400 📜 [View tickets_data.csv](stage1/PythonScript/tickets_data.csv)

**For other files 📜 [View DataImportFiles](stage1/DataImportFiles)


## Backup
backups files are kept with the date and hour of the backup:
create backup file in cmd:

![image](https://github.com/user-attachments/assets/967d231a-0165-48a7-812a-add5a9afc65b)

📜 [View backupFile](stage1/Backup/backupFile)

reconstruction:

![image](https://github.com/user-attachments/assets/fd3b4dd4-114e-4cf9-b009-a5d71e45b293)

![image](https://github.com/user-attachments/assets/8851bf9e-79c1-41d7-9c80-6bb49aa15bcf)

results in pgsadmin:

![image](https://github.com/user-attachments/assets/d1ca649f-cd41-4ba9-a062-b39861bb204f)


## Phase 2: Queries and constraints
### Queries

#### Querie 1:

The query displays, in alphabetical order by country, for each athlete born after the year 2000 the highest medal they won... (athletes without a medal will not be displayed)

![image](https://github.com/user-attachments/assets/f2cbb890-fa31-4b20-9a39-95ca8de0637c)

![image](https://github.com/user-attachments/assets/7a8f105b-aa5e-42f0-9528-4b64205258c4)

![image](https://github.com/user-attachments/assets/d49a9c0d-37b8-4962-a116-49cd6ce5069c)

#### Querie 2:

The query displays alphabetically by venue name, for each venue the number of tickets sold each month in descending order.

![image](https://github.com/user-attachments/assets/e68effc2-6955-429e-9461-ff7e4381a700)

![image](https://github.com/user-attachments/assets/4f94dd90-cf23-4716-8d70-73764e9a8754)

![image](https://github.com/user-attachments/assets/edcb225a-643d-49d2-9c9f-6676e8ea9443)

#### Querie 3:

The query displays, in alphabetical order by country name, the number of athletes who participated in a particular competition for each country.

![image](https://github.com/user-attachments/assets/cd9c0a2b-f6b4-4245-a353-a989ca816932)

![image](https://github.com/user-attachments/assets/68e64738-113e-4e11-9f12-5ab360ecc8a5)

![image](https://github.com/user-attachments/assets/d3347e7a-c35f-4129-8b04-251e447c9ddd)

#### Querie 4:

The query displays, in serial order according to the athlete's thesis, only the countries in which one athlete won a medal, and displays for him the highest medal he won.

![image](https://github.com/user-attachments/assets/38aebe74-1806-45b1-ac26-3fae2c62d794)

![image](https://github.com/user-attachments/assets/9418d711-5595-486e-ad3a-bda5716e8f0e)

![image](https://github.com/user-attachments/assets/0276c60c-5c47-4032-b52d-826a33197c78)

 












