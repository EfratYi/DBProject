CREATE TABLE Sport (
  SportID INT PRIMARY KEY NOT NULL,
  SportName VARCHAR(50) NOT NULL,
  Category VARCHAR(50) NOT NULL
);

CREATE TABLE Country (
  CountryId INT PRIMARY KEY NOT NULL,
  CountryName VARCHAR(50) NOT NULL,
  TotalMedals INT NOT NULL
);

CREATE TABLE Venue (
  VenueID INT PRIMARY KEY NOT NULL,
  VenueName VARCHAR(50) NOT NULL,
  VenueLocation VARCHAR(50) NOT NULL,
  Capacity INT NOT NULL
);

CREATE TABLE Athlete (
  AthleteID INT PRIMARY KEY NOT NULL,
  AthleteName VARCHAR(50) NOT NULL,
  Gender VARCHAR(50) NOT NULL,
  Birthday DATE NOT NULL,
  CountryId INT NOT NULL,
  FOREIGN KEY (CountryId) REFERENCES Country(CountryId)
);

CREATE TABLE Competition (
  CompetitionId INT PRIMARY KEY NOT NULL,
  CompDate DATE NOT NULL,
  CompetitionName VARCHAR(50) NOT NULL,
  SportID INT NOT NULL,
  VenueID INT NOT NULL,
  FOREIGN KEY (SportID) REFERENCES Sport(SportID),
  FOREIGN KEY (VenueID) REFERENCES Venue(VenueID)
);

CREATE TABLE Ticket (
  CardId INT PRIMARY KEY NOT NULL,
  CardDate DATE NOT NULL,
  TicketPrice FLOAT NOT NULL,
  VenueID INT NOT NULL,
  FOREIGN KEY (VenueID) REFERENCES Venue(VenueID)
);

CREATE TABLE Relationship (
  AthleteRank INT NOT NULL,
  Medal VARCHAR(50),
  CompetitionId INT NOT NULL,
  AthleteID INT NOT NULL,
  PRIMARY KEY (CompetitionId, AthleteID),
  FOREIGN KEY (CompetitionId) REFERENCES Competition(CompetitionId),
  FOREIGN KEY (AthleteID) REFERENCES Athlete(AthleteID)
);