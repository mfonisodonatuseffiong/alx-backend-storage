-- Use a different delimiter to define the trigger
DELIMITER //

-- Trigger to reset valid_email when the email is changed
DROP TRIGGER IF EXISTS reset_valid_email//

CREATE TRIGGER reset_valid_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if the email has changed
    IF NEW.email != OLD.email THEN
        -- Reset valid_email to 0
        SET NEW.valid_email = 0;
    END IF;
END//

-- Revert to the default delimiter
DELIMITER ;
