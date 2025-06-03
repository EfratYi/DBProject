CREATE OR REPLACE PROCEDURE update_medal_count_by_country()
LANGUAGE plpgsql
AS
$$
DECLARE
  country_rec RECORD;
  medal_count INT;
  country_cursor CURSOR FOR SELECT countryid FROM country;
BEGIN
  OPEN country_cursor;

  LOOP
    FETCH country_cursor INTO country_rec;
    EXIT WHEN NOT FOUND;

    BEGIN
      SELECT COUNT(*) INTO medal_count
      FROM athlete a
      JOIN athletecompetition ac ON a.athleteid = ac.athleteid
      WHERE a.countryid = country_rec.countryid
        AND ac.medal IS NOT NULL; 
      IF medal_count IS NULL THEN
        medal_count := 0;
      END IF;

      UPDATE country
      SET totalmedals = medal_count
      WHERE countryid = country_rec.countryid;

    EXCEPTION WHEN OTHERS THEN
      RAISE NOTICE 'בעיה עם המדינה %: %', country_rec.countryid, SQLERRM;
    END;
  END LOOP;

  CLOSE country_cursor;
END;
$$;
