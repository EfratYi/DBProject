CREATE OR REPLACE FUNCTION fn_validate_ticket_price()
RETURNS TRIGGER AS
$$
BEGIN
  IF NEW.CardPrice <= 0 THEN
    RAISE EXCEPTION 'מחיר כרטיס חייב להיות גדול מ-0';
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_validate_ticket_price
BEFORE INSERT ON Ticket
FOR EACH ROW
EXECUTE FUNCTION fn_validate_ticket_price();


