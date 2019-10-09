DELIMITER //

USE FINANCE //

DROP PROCEDURE IF exists total_Liabilities //

CREATE PROCEDURE total_Liabilities(IN companyname varchar(50),OUT totalamount INT(6))
BEGIN
	DECLARE capitalaccount INT(5);
    DECLARE loans INT(5);
    DECLARE sundrycreditors INT(5);
  
	
  
  
END //
DELIMITER ;