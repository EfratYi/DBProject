CREATE VIEW TeamAthleteCoach AS
SELECT 
    T.teamname,
    A.athleteid,
    A.athletename,
    A.athleteposition,
    C.coachfirstname,
    C.coachlastname
FROM Team T
JOIN Athlete A ON T.TeamID = A.TeamID
JOIN Coach C ON T.CoachID = C.CoachID;

SELECT *
FROM TeamAthleteCoach
LIMIT 10;


SELECT 
    coachfirstname,
    coachlastname,
    COUNT(DISTINCT athleteid) AS NumOfAthletes
FROM TeamAthleteCoach
GROUP BY coachfirstname, coachlastname
ORDER BY NumOfAthletes DESC;


SELECT 
    teamname,
    athletename,
    athleteposition
FROM TeamAthleteCoach
WHERE athleteposition = 'Guard'
ORDER BY teamname, athletename;


CREATE VIEW AthletesWithMedals AS
SELECT 
    a.AthleteID,
    a.AthleteName,
    a.Gender,
    c.CountryName,
    r.Medal,
    s.SportName,
    co.CompDate
FROM Athlete a
JOIN Country c ON a.CountryId = c.CountryId
JOIN AthleteCompetition r ON a.AthleteID = r.AthleteID
JOIN Competition co ON r.CompetitionId = co.CompetitionId
JOIN Sport s ON co.SportID = s.SportID
WHERE r.Medal IS NOT NULL;
-- שליפה
SELECT * 
FROM AthletesWithMedals
LIMIT 10;



SELECT CountryName, COUNT(*) AS GoldMedals
FROM AthletesWithMedals
WHERE Medal = 'Gold'
GROUP BY CountryName
ORDER BY GoldMedals DESC;


SELECT AthleteName, SportName, Medal, CompDate
FROM AthletesWithMedals
WHERE CompDate > '2020-12-31'
ORDER BY CompDate DESC;