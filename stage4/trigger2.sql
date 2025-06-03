-- פונקציה שמתקנת דירוגים לא חוקיים רק בעת UPDATE
CREATE OR REPLACE FUNCTION fn_fix_invalid_ranking()
RETURNS TRIGGER AS
$$
BEGIN
  IF NEW.Fiba_ranking < 1 OR NEW.Fiba_ranking > 100 THEN
    RAISE NOTICE '⚠️ דירוג לא חוקי לקבוצה % (דירוג: %). עודכן ל-100 כברירת מחדל.', NEW.TeamName, NEW.Fiba_ranking;
    NEW.Fiba_ranking := 100;
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- מחיקת טריגר קודם אם קיים
DROP TRIGGER IF EXISTS trg_validate_team_ranking ON Team;

-- יצירת טריגר שמופעל רק על UPDATE
CREATE TRIGGER trg_validate_team_ranking
BEFORE UPDATE ON Team
FOR EACH ROW
EXECUTE FUNCTION fn_fix_invalid_ranking();