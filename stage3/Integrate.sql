-- 1. הוספת סוג התחרות (individual/team)
ALTER TABLE Competition
ADD CompetitionType VARCHAR(20) NOT NULL DEFAULT 'individual' 
CHECK (CompetitionType IN ('individual', 'team'));

ALTER TABLE Competition
ADD RefereeId INT,
ADD FOREIGN KEY (RefereeId) REFERENCES Referee(RefereeId);

-- 2. קשר בין Competition לטורניר (Tournament)
ALTER TABLE Competition
ADD TournamentID INT;

ALTER TABLE Competition
ADD FOREIGN KEY (TournamentID) REFERENCES Tournament(TournamentID);

-- 3. חיבור את Athlete לקבוצה ושחקן (Player)
ALTER TABLE Athlete
ADD TeamID INT NULL,
ADD IsPlayer BOOLEAN DEFAULT FALSE,
ADD AthleteHeight FLOAT,
ADD AthleteJerseyNum INT,
ADD AthletePosition VARCHAR(50);

ALTER TABLE Athlete
ADD FOREIGN KEY (TeamID) REFERENCES NationalTeam(TeamID);


CREATE TABLE IF NOT EXISTS TeamComp (
  TeamID INT NOT NULL,
  CompetitionID INT NOT NULL,
  TeamScore INT DEFAULT 0,
  PRIMARY KEY (TeamID, CompetitionID),
  FOREIGN KEY (TeamID) REFERENCES NationalTeam(TeamID),
  FOREIGN KEY (CompetitionID) REFERENCES Competition(CompetitionID)
);


ALTER TABLE nationalteam RENAME TO Team;


ALTER TABLE Team
DROP COLUMN TeamCountry;


ALTER TABLE Team
ADD CountryId INT,
ADD FOREIGN KEY (CountryId) REFERENCES Country(CountryId);


ALTER TABLE Ticket
DROP COLUMN VenueId;

ALTER TABLE Ticket
ADD CompetitionId INT,
ADD FOREIGN KEY (CompetitionId) REFERENCES Competition(CompetitionId);


DROP TABLE IF EXISTS Officiated_by;
DROP TABLE IF EXISTS CompAthlete;
DROP TABLE IF EXISTS Compets;
DROP TABLE IF EXISTS Game;
DROP TABLE IF EXISTS Player;
