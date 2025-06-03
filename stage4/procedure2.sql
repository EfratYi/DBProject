
CREATE OR REPLACE PROCEDURE assign_random_referees_to_unassigned_competitions()
LANGUAGE plpgsql
AS $$
DECLARE
  comp_id INT;
  rand_referee_id INT;
BEGIN
  FOR comp_id IN
    SELECT competitionid FROM competition WHERE refereeid IS NULL
  LOOP
    SELECT refereeid INTO rand_referee_id
    FROM referee
    ORDER BY RANDOM()
    LIMIT 1;

    UPDATE competition
    SET refereeid = rand_referee_id
    WHERE competitionid = comp_id;
  END LOOP;
END;
$$;