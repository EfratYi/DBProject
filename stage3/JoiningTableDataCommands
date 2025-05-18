--העברת נתונים מplayer לathlete

CREATE SEQUENCE athlete_athleteid_seq;
ALTER TABLE Athlete ALTER COLUMN athleteid SET DEFAULT nextval('athlete_athleteid_seq');
SELECT setval('athlete_athleteid_seq', (SELECT COALESCE(MAX(athleteid), 0) FROM Athlete));


INSERT INTO Athlete (
  teamid,
  isplayer,
  "Athleteheight",
  "Athletejerseynum",
  athletename,
  "Athleteposition",
  birthday,
  countryid,
  gender
)
SELECT
  teamid,
  TRUE,
  playerheight,
  playerjerseynum,
  playerfirstname || ' ' || playerlastname,
  playerposition,
  playerbirthdate,
  NULL,
  NULL
FROM Player p;

---העברת נתונים מcompets לteamcomp

INSERT INTO TeamComp (TeamID, CompetitionID, TeamScore)
SELECT TeamID, Competid, TeamScore
FROM Compets;

--העברת נתונים מgame לcompetition
CREATE SEQUENCE IF NOT EXISTS competition_competitionid_seq;

ALTER TABLE Competition 
ALTER COLUMN competitionid 
SET DEFAULT nextval('competition_competitionid_seq');

SELECT setval(
    'competition_competitionid_seq',
    (SELECT COALESCE(MAX(competitionid), 0) FROM Competition)
);

INSERT INTO Competition (compdate, tournamentid)
SELECT 
    gamedate,
    TournamentId
FROM game;


