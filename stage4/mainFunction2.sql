-- main_assign_and_report.sql
-- מזמן פרוצדורה להקצאת שופטים לתחרויות + פונקציה להחזרת רשימת ספורטאים עם מדליות למדינה

DO
$$
DECLARE
  ref_cur REFCURSOR;
  athlete_name TEXT;
  medals INT;
BEGIN
  CALL assign_random_referees_to_unassigned_competitions();

  ref_cur := get_top_athletes_by_country(1);
  LOOP
    FETCH ref_cur INTO athlete_name, medals;
    EXIT WHEN NOT FOUND;
    RAISE NOTICE 'Athlete: %, Medals: %', athlete_name, medals;
  END LOOP;

  CLOSE ref_cur;
END;
$$ LANGUAGE plpgsql;