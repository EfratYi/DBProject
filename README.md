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
- [🔗 Select Queries](#Select-Queries)
- [🔗 Update Queries](#Update-Queries)
- [🔗 Delete Queries](#Delete-Queries)
- [🔗 Constraints](#Constraints)

### **Phase 3: Integration and Views**  
-[🔍Checking out the new wing](#Checking-out-the-new-wing)
- [📊 Integration ERD (Entity-Relationship Diagram)](#erd-entity-relationship-diagram-)
- [📂 Integration DSD (Data Structure Diagram)](#dsd-data-structure-diagram)
- [🔄 Database Integration Phase](#-Database-Integration-Phase)
- [📄 Views](#views)



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
![ERD](https://github.com/user-attachments/assets/289962f2-f5dd-435a-af8c-5b1d96bf7bb7)

## DSD (Data Structure Diagram)
![DSD](https://github.com/user-attachments/assets/7f38192a-5d52-4c69-9215-d6be067e252c)

## SQL Scripts
Provide the following SQL scripts:

Create Tables Script - The SQL script for creating the database tables is available in the repository:
📜 [View createTables.sql](stage1/script/createTables.sql)

Insert Data Script - The SQL script for insert data to the database tables is available in the repository:
📜 [View insertTables.sql](stage1/script/insertTables.sql)

Drop Tables Script - The SQL script for droping all tables is available in the repository:
📜 [View dropTables.sql](stage1/script/dropTables.sql)

Select All Data Script - The SQL script for selectAll tables is available in the repository:
📜 [View selectTables.sql](stage1/script/selectTables.sql)

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

## Queries

### Select Queries

📜 [View selectQueries.sql](stage2/selectQueries.sql‏)

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

![image](https://github.com/user-attachments/assets/50817e9c-c661-403f-a510-34759ad2915e)

![image](https://github.com/user-attachments/assets/4e70e002-7975-439e-98d6-7ec8df69088a)

![image](https://github.com/user-attachments/assets/e57cedcd-16b3-4529-956f-f61ec2cc9d45)

#### Querie 5:

The query displays, in alphabetical order by the name of the sport, data about the sport, such as: the number of competitions in that sport, the number of medals won in that sport, as well as the number of places where the sport took place and the first date the sport took place.

![image](https://github.com/user-attachments/assets/7b0b84d1-accf-4a0d-b71c-839268e04f9a)

![image](https://github.com/user-attachments/assets/15e2b881-110a-4cbc-b7ac-81040d7920c4)

![image](https://github.com/user-attachments/assets/f5059c4d-46a7-4971-b0f1-5b0de138f482)

#### Querie 6:

A query that displays for each sport its most popular arena, meaning the arena where it took place the most times, and also displays the number of times.

![image](https://github.com/user-attachments/assets/d855934f-8d31-4f07-a662-466f3d3524f7)

![image](https://github.com/user-attachments/assets/89a0c48e-41af-4ecb-b172-89b8d998fa2b)

![image](https://github.com/user-attachments/assets/61c2cb42-27ae-440f-8cde-f01ec0945ca7)

#### Querie 7:

A query that displays, in alphabetical order by country name, for each country the athlete who won the most medals from that country.

![image](https://github.com/user-attachments/assets/1020c4df-5098-45a7-a960-6fa324b4f2f3)

![image](https://github.com/user-attachments/assets/0506c56a-0501-4c6a-b186-ccce037ab79c)

![image](https://github.com/user-attachments/assets/43328931-dfbf-4a6b-8271-4ff6ba8fe3e6)

#### Querie 8:

The query shows the number of tickets sold per venue per month, ordered by venue and descending ticket sales

![image](https://github.com/user-attachments/assets/79d36734-9a4f-412e-bff2-0f8443f584cd)

![image](https://github.com/user-attachments/assets/cce6fd00-5f5d-47c0-bc8c-802e6c00dbf4)

![image](https://github.com/user-attachments/assets/30f0382a-4b3e-4d77-b783-bd74a643d3b8)


### Update Queries

📜 [View updateQueries.sql](stage2/updateQueries.sql‏)

#### Querie 1:

-- Update total medals for each country based on actual wins

![image](https://github.com/user-attachments/assets/1107727f-cd5f-4f85-9a65-15c89dce1348)

![image](https://github.com/user-attachments/assets/ff158fe8-eea7-4472-bdbd-0861b9090f36)

Before:

![image](https://github.com/user-attachments/assets/86630574-0457-4086-909a-41cc2561233e)

After:

![image](https://github.com/user-attachments/assets/b220faa2-956f-4b7e-9044-78e51217c179)

#### Querie 2:

-- Increase ticket prices by 20% for venues with capacity over 10,000

![image](https://github.com/user-attachments/assets/25e8867d-79a1-4e9c-9e5c-038820595c81)

![image](https://github.com/user-attachments/assets/8306c3d9-6861-4998-a319-f73683e61bdb)

Before:

![image](https://github.com/user-attachments/assets/30e36489-f92e-4a95-8975-4549eab3c0b8)

After:

![image](https://github.com/user-attachments/assets/9513891c-6d34-49ae-a59f-8be2a351b57b)

#### Querie 3:

-- Set 'Gold' medal for athletes ranked 1st with no medal yet

![image](https://github.com/user-attachments/assets/76ef1a06-f4ad-42d5-adbe-1441d4f46959)

![image](https://github.com/user-attachments/assets/a49be373-db45-4806-b007-bdd0e4bd8a6f)

Before:

![image](https://github.com/user-attachments/assets/b70ca1a6-726a-4e4f-b3db-da1bdb4eb797)

After:

![image](https://github.com/user-attachments/assets/ea16884a-37c1-4521-be4c-345837c95d2f)

### Delete Queries

📜 [View deleteQueries.sql](stage2/deleteQueries.sql‏)

#### Querie 1:

-- Delete tickets with card date before 2010

![image](https://github.com/user-attachments/assets/329285e1-f0cb-45c5-9991-9342c560d7a8)

![image](https://github.com/user-attachments/assets/57b8b8c5-dfe8-4284-9bc1-0e7e93f11364)

Before:

![image](https://github.com/user-attachments/assets/cb5d26cf-3532-4a2c-a8ed-291d8e907714)

After:

![image](https://github.com/user-attachments/assets/e8812baf-edd7-4fc9-81bf-e2a2e1261ae5)


#### Querie 2:

-- Delete athlete rankings lower than 15th place

![image](https://github.com/user-attachments/assets/81ddcd43-aaee-47f7-b440-3fc16b007f21)

![image](https://github.com/user-attachments/assets/22ebd8d1-8c8f-4cc4-bbed-3604acc03600)

Before:

![image](https://github.com/user-attachments/assets/90f9aa27-5fbb-4b0f-b2a3-83403208f1a1)

After:

![image](https://github.com/user-attachments/assets/77dde461-ffba-4544-a08b-81befda05d1c)


#### Querie 3:

-- Delete athletes who have no participation records

![image](https://github.com/user-attachments/assets/0c529ea2-357c-453c-8b00-ca81cf6a544a)

![image](https://github.com/user-attachments/assets/844835e1-e56c-47e8-a9a2-08352ad10fa4)

Before:

![image](https://github.com/user-attachments/assets/f5bf3c9d-dfe5-4af2-8dc9-b708aeb46e04)


After:

![image](https://github.com/user-attachments/assets/45acc22d-dbc6-416d-95fd-7838079f0a6b)


## Constraints

📜 [View Constraints.sql](stage2/Constraints.sql‏)

### constraint 1:

-- Make sure every venue has a location (no NULLs allowed in VenueLocation column)

![image](https://github.com/user-attachments/assets/d82f4bd4-6896-4b63-bc6f-9158bfcafbf0)

![image](https://github.com/user-attachments/assets/005eb89b-9344-4fa1-a759-016de0667c92)

![image](https://github.com/user-attachments/assets/168a3140-1edd-495e-a9df-174a7c1ae349)


### constraint 2:

-- Ensure that TotalMedals in the Country table is never negative

![image](https://github.com/user-attachments/assets/94f49a85-e7f8-4f08-93b6-32fb6e5cca47)

![image](https://github.com/user-attachments/assets/e3203322-2d71-4c66-859b-54e7f7d85bf3)

![image](https://github.com/user-attachments/assets/c245f612-b1f8-47e3-986f-317036bba9d0)


### constraint 3:

-- Set a default price of 100 for tickets when no price is specified

![image](https://github.com/user-attachments/assets/05138727-9053-4f8c-907a-6121dbd18f49)

![image](https://github.com/user-attachments/assets/756ca049-f68f-4bef-8eac-c9a9d1fca8e8)

![image](https://github.com/user-attachments/assets/5c50cfb5-70dc-4e3a-a177-a5a37c15dc63)

## Phase 3: Integration and Views

## Checking out the new wing

After running the queries for the new wing on the backup we uploaded, everything worked properly.

results:

![image](https://github.com/user-attachments/assets/db3ab626-9499-4e52-9015-dadce09406a6)

![image](https://github.com/user-attachments/assets/939300b8-fb91-4730-a6d3-84084e39bd73)


**You can see the ERD DSD diagrams of the new wing:**

**ERD-👉[View newERD.png](stage3/newERD.png)**
**DSD-👉[View newDSD.png](stage3/newDSD.png)**

## Integration ERD (Entity-Relationship Diagram-)

![image](https://github.com/user-attachments/assets/ce6868dc-23f7-4273-9a0a-4e62b74280c1)

## Integration DSD (Data Structure Diagram)

![image](https://github.com/user-attachments/assets/e4353f82-cb74-44e0-9a21-dc78f708d3f4)



## 🔄 Database Integration Phase

During this stage, two separate databases were merged into one unified schema. The goal was to consolidate the data, normalize entities, and ensure the resulting structure supports both current and future needs of the system.

### 🧾 Description of the Integration Process
Below is a breakdown of the changes and SQL commands that were executed during the merge.

#### 🏁 Step 1: Extending Existing Tables
Added CompetitionType to classify competitions as individual or team-based.

Added foreign keys to associate competitions with referees and tournaments.

Added fields to Athlete to support player-specific attributes (e.g., TeamID, Position, etc.)

#### 🏗️ Step 2: Relationship Table Creation
Created the TeamComp junction table to represent the many-to-many relationship between teams and competitions

#### 🧱 Step 3: Schema Restructuring
Renamed NationalTeam to Team.

Removed the TeamCountry column and replaced it with a foreign key to the Country table.

Updated the Ticket table to reference Competition instead of Venue.

#### 🧹 Step 4: Cleanup of Legacy Tables
Dropped unused or replaced tables such as Officiated_by, Game, Player, and Compets.

### 📊 Step 5: Migrating Existing Data

👉 Data from tables (Player, Game, and Compets) was migrated into the new schema without loss.

**Player → Athlete** : All players were inserted into the Athlete table, with relevant fields such as name, height, jersey number, and position preserved. New identifiers were generated automatically using sequences.

**Compets → TeamComp** : Team participation data and scores were transferred into the new TeamComp table, maintaining the link between teams and competitions.

**Game → Competition** : Game records were converted into Competition entries, with dates and tournament references preserved. A sequence ensured continuity in competition IDs.

👉 After verifying the data, the original tables were removed from the schema to complete the integration.

**After Integration👉**

![image](https://github.com/user-attachments/assets/c09ad627-4cea-44c6-98af-0bd2c6d5942e)


#### To the SQL Code📜 [View Integrate.sql](stage3/Integrate.sql) 
#### && 📜[View JoiningTableDataCommands.sql](stage3/JoiningTableDataCommands.sql)


## 📄Views

**📄 View: TeamAthleteCoach**

**📝 Description:**

The TeamAthleteCoach view combines data from the Team, Athlete, and Coach tables. It provides a clear snapshot of each athlete, the team they belong to, and the coach responsible for that team. This view is helpful for displaying the full relationship between athletes, their teams, and coaching staff.

**🔍 Sample Data Query (10 rows):**

![image](https://github.com/user-attachments/assets/9b35392b-7b9a-44bc-9b22-051c43442912)

**🔎 Query 1: List of athletes with their team and coach**

**Description:**

This query retrieves the full list of athletes along with their team name and the coach’s full name.

![image](https://github.com/user-attachments/assets/2dbdcb16-e31d-4152-8d73-9c5729f89a55)

![image](https://github.com/user-attachments/assets/7b553795-381a-43c6-88e3-e65578ee4ac9)

**🔎 Query 2: Number of athletes per coach**

**Description:**

This query counts how many athletes are assigned under each coach.

![image](https://github.com/user-attachments/assets/d94d7fac-b899-4956-b86c-647641ba8d3c)

![image](https://github.com/user-attachments/assets/81b848be-fbdd-4d48-957e-c97631f10a19)


**📄 View: AthletesWithMedals**

**📝 Description:**

The AthletesWithMedals view combines information from multiple tables to present a comprehensive overview of athletes who have won medals. It includes details such as the athlete's name, gender, nationality, the medal they won, the sport, and the date of the competition. This view only includes records where a medal was awarded.

**🔍 Sample Data Query (10 rows):**

![image](https://github.com/user-attachments/assets/77a98ed9-13df-42f8-a355-903c6d0476d9)

**🔎 Query 1: Number of gold medals by country**

**📝 Description:**

This query counts how many gold medals were won by athletes from each country.

![image](https://github.com/user-attachments/assets/0fc0e7dc-c7a1-4e48-b921-f93a26f31aa5)

![image](https://github.com/user-attachments/assets/50af49e8-7df3-4d80-a6b0-e0a77aea26e0)

**🔎 Query 2: Medals won after 2020**

**📝 Description:**

This query shows a list of athletes who won medals after 2020, including the sport and competition date, sorted from most recent.

![image](https://github.com/user-attachments/assets/2326b697-8989-4132-9ec0-22485e8b36a1)

##📜to the views code [View views.sql](stage3/views.sql) 


