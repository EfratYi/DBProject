-- main_run_team_stats.sql
-- מזמן פונקציה לחישוב ממוצע ניקוד + פרוצדורה לעדכון מדליות לכל מדינה

DO
$$
DECLARE
  team_id INT := 1; 
  avg_score FLOAT;
BEGIN

  CALL update_medal_count_by_country();

  avg_score := calculate_average_team_score(team_id);

  RAISE NOTICE 'Team % average score: %', team_id, avg_score;
END;
$$ LANGUAGE plpgsql;



