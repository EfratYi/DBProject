CREATE OR REPLACE FUNCTION get_top_athletes_by_country(p_country_id INT)
RETURNS REFCURSOR AS
$$
DECLARE
  cur_top_athletes REFCURSOR;
BEGIN
  OPEN cur_top_athletes FOR
    SELECT a.athletename, COUNT(ac.competitionid) AS total_medals
    FROM athlete a
    JOIN athletecompetition ac ON a.athleteid = ac.athleteid
    WHERE a.countryid = p_country_id
      AND ac.medal IS NOT NULL  
    GROUP BY a.athletename
    ORDER BY total_medals DESC;

  RETURN cur_top_athletes;
END;
$$ LANGUAGE plpgsql;