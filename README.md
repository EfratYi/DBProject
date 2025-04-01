Olympiad

Efrat Miletzky & Efrat Yishay

Table of Contents

Phase 1: 
Design and Build the Database

Introduction

ERD (Entity-Relationship Diagram)

DSD (Data Structure Diagram)

SQL Scripts

Data

Backup

Phase 2: Integration

Phase 1: 
Design and Build the Database
Introduction
The Olympiad Database is designed to efficiently manage information related to athletes, competitions, venues, and results. This system ensures seamless organization and tracking of essential details such as competition schedules, athlete rankings, sports categories, and venue capacities. By maintaining structured and easily accessible data, the system enhances event coordination, performance analysis, and historical record-keeping for future Olympiad events.

Purpose of the Database
This database serves as a structured and reliable solution for managing Olympiad events by enabling:

Efficient Competition Organization – Schedule and manage competitions, ensuring accurate tracking of events, venues, and participants.

Athlete Performance Monitoring – Record and analyze athlete rankings, medal achievements, and participation history.

Venue and Sport Management – Maintain detailed records of venues, including location, capacity, and assigned sports.

Structured Athlete and Country Data – Link athletes to their respective countries, track their progress, and store demographic details.

Ticketing and Audience Coordination – Manage ticket sales, pricing, and attendance data for competitions.
Potential Use Cases
Olympiad Organizers can efficiently allocate venues, schedule competitions, and track athlete performances.

Athletes and Coaches can access competition records, track progress, and analyze past performances.

Sports Analysts can retrieve data on sports trends, medal distributions, and athlete statistics.

Audience and Ticketing Management ensures smooth ticket distribution and event attendance tracking.

This structured database streamlines Olympiad management, enhancing organization, record-keeping, and accessibility for all involved.

ERD (Entity-Relationship Diagram)
![image](https://github.com/user-attachments/assets/a13786b5-c262-4ed1-9c62-8c83885ab3d9)

DSD (Data Structure Diagram)
![DSD](https://github.com/user-attachments/assets/d2b49d11-fa2b-4304-89a2-a6e12675b3b5)

SQL Scripts
Provide the following SQL scripts:

Create Tables Script - The SQL script for creating the database tables is available in the repository:
📜 View createTables.sql

Insert Data Script - The SQL script for insert data to the database tables is available in the repository:
📜 View insertTables.sql

Drop Tables Script - The SQL script for droping all tables is available in the repository:
📜 View dropTables.sql

Select All Data Script - The SQL script for selectAll tables is available in the repository:
📜 View selectAllTables.sql

Data
First tool: 

using mockaro to create csv file

Entering a data to Ticket table
ticket id scope 1-400 📜View MOCK_DATA.csv
Entering a data to ticket table

Formula of Ticket ID: this + 400 

<img width="910" alt="Mock" src="https://github.com/user-attachments/assets/3d2e44bb-4ffe-4707-93f5-eecadf41106f" />

<img width="483" alt="dockerMock" src="https://github.com/user-attachments/assets/a3f69cd3-74d2-434b-9a15-d6321189cc0f" />

 results for the command ![image](https://github.com/user-attachments/assets/3b231762-b88d-4b66-94a7-1ade6c140eed)
 
![image](https://github.com/user-attachments/assets/477ba7ee-7597-4850-8954-1aca70c14567)


Second tool: using generatedata. to create csv file
Entering a data to Athlete table
Group Number scope 1-400 📜View generatedata.csv



