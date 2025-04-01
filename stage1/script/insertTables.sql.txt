-- הכנסת נתונים לטבלת Sport
INSERT INTO Sport (SportID, SportName, Category) VALUES (1, 'Basketball', 'Team');
INSERT INTO Sport (SportID, SportName, Category) VALUES (2, 'Swimming', 'Individual');
INSERT INTO Sport (SportID, SportName, Category) VALUES (3, 'Tennis', 'Individual');

-- הכנסת נתונים לטבלת Country
INSERT INTO Country (CountryId, CountryName, TotalMedals) VALUES (1, 'USA', 50);
INSERT INTO Country (CountryId, CountryName, TotalMedals) VALUES (2, 'Canada', 30);
INSERT INTO Country (CountryId, CountryName, TotalMedals) VALUES (3, 'Germany', 40);

-- הכנסת נתונים לטבלת Venue
INSERT INTO Venue (VenueID, VenueName, Location, Capacity) VALUES (1, 'Stadium A', 'New York', 50000);
INSERT INTO Venue (VenueID, VenueName, Location, Capacity) VALUES (2, 'Arena B', 'Toronto', 20000);
INSERT INTO Venue (VenueID, VenueName, Location, Capacity) VALUES (3, 'Pool C', 'Berlin', 10000);

-- הכנסת נתונים לטבלת Athlete
INSERT INTO Athlete (AthleteID, Name, Gender, Birthday, CountryId) VALUES (1, 'John Doe', 'Male', '1995-06-15', 1);
INSERT INTO Athlete (AthleteID, Name, Gender, Birthday, CountryId) VALUES (2, 'Jane Smith', 'Female', '2000-09-22', 2);
INSERT INTO Athlete (AthleteID, Name, Gender, Birthday, CountryId) VALUES (3, 'Tom Brown', 'Male', '1998-12-05', 3);

-- הכנסת נתונים לטבלת Competition
INSERT INTO Competition (CompetitionId, CompDate, CompetitionName, SportID, VenueID) VALUES (1, '2025-07-01', 'Olympic Basketball', 1, 1);
INSERT INTO Competition (CompetitionId, CompDate, CompetitionName, SportID, VenueID) VALUES (2, '2025-07-02', '100m Freestyle', 2, 3);
INSERT INTO Competition (CompetitionId, CompDate, CompetitionName, SportID, VenueID) VALUES (3, '2025-07-03', 'Grand Slam', 3, 2);

-- הכנסת נתונים לטבלת Ticket
INSERT INTO Ticket (CardId, CardDate, Price, VenueID) VALUES (1, '2025-07-01', 100, 1);
INSERT INTO Ticket (CardId, CardDate, Price, VenueID) VALUES (2, '2025-07-02', 80, 3);
INSERT INTO Ticket (CardId, CardDate, Price, VenueID) VALUES (3, '2025-07-03', 150, 2);

-- הכנסת נתונים לטבלת Relationship
INSERT INTO Relationship (Rank, Medal, CompetitionId, AthleteID) VALUES (1, 'Gold', 1, 1);
INSERT INTO Relationship (Rank, Medal, CompetitionId, AthleteID) VALUES (2, 'Silver', 2, 2);
INSERT INTO Relationship (Rank, Medal, CompetitionId, AthleteID) VALUES (3, 'Bronze', 3, 3);