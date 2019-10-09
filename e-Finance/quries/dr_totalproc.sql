DELIMITER //

use finance //

DROP PROCEDURE IF EXISTS  drTotal //

CREATE PROCEDURE drTotal(IN companyname Varchar(40),OUT totalamount INT)
begin
	
    DECLARE dutiesandtaxes INT;
    DECLARE directexp INT;
    DECLARE openstock INT;
	
    select SUM(balance) into dutiesandtaxes from tl_fn_current_asserts where under='Duties&Taxes' and  balance is not null;
    select SUM(balance) into directexp from tl_fn_current_asserts where under='DirectExpenses' and balance is not null;
    
    select dutiesandtaxes;
    select directexp;
    
  set totalamount=dutiesandtaxes;



END //

DELIMITER ;