CREATE OR REPLACE FUNCTION calculate_average_team_score(p_team_id INT)
RETURNS FLOAT AS
$$
DECLARE
  avg_score FLOAT;
BEGIN
  SELECT AVG(TeamScore) INTO avg_score
  FROM TeamComp
  WHERE TeamID = p_team_id;

  IF avg_score IS NULL THEN
    RETURN 0;
  END IF;

  RETURN avg_score;
END;
$$ LANGUAGE plpgsql;