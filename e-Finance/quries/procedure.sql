DELIMITER //

use finance //

DROP PROCEDURE IF EXISTS totalIndirectExp //

CREATE PROCEDURE totalIndirectExp(IN comp varchar(40), OUT totalamount INT)
BEGIN 
	DECLARE autoexp int(6);
	DECLARE phonebillexp int(6);
	DECLARE foodexp int(6);
    DECLARE advertisement int(6);
	DECLARE officeexp int(6);
    DECLARE postageexp int(6);
    DECLARE repairexp int(6);
    DECLARE entertainmentexp int(6);
    DECLARE hoteexp int(6);
    DECLARE misexp int(6);
    DECLARE intexp int(6);
    DECLARE salaryexp int(6);
    DECLARE sundrystaff int(6);
    DECLARE companyname varchar(40);
	DECLARE nontrading varchar(40);
	DECLARE otherexp varchar(40);
    
	SELECT SUM(amountdue) INTO autoexp FROM tl_fn_autoexpencestravel where login_comp=comp and amountdue is not Null;

	SELECT SUM(amountdue) INTO phonebillexp FROM tl_fn_phonebillexpences where login_comp=comp and amountdue is not Null;	

	SELECT SUM(amountdue) INTO foodexp from tl_fn_foodexpenses where login_comp=comp and amountdue is not Null;

	SELECT SUM(totalamount) into hoteexp from tl_fn_hotelexpenses where login_comp=comp and totalamount is not Null;

	select SUM(amountdue) INTO entertainmentexp from tl_fn_entertainmentexpenceses where login_comp=comp and amountdue is not NULL;

	SELECT SUM(amount) INTO advertisement from tl_fn_advertisementexp where login_comp=comp and amount is not Null;

    SELECT SUM(total) INTO officeexp from tl_fn_officeexp where login_comp=comp and total is not Null;

    SELECT SUM(totalamount) INTO postageexp from tl_fn_postageexp where login_comp=comp and totalamount is not Null;

    SELECT SUM(total) INTO repairexp from tl_fn_repairmaintenance where login_comp=comp and total is not Null;

	SELECT SUM(amount) INTO misexp from tl_fn_misleniousexpenceses where login_comp=comp and amount is not Null;

	SELECT SUM(totalamount) into nontrading from tl_fn_nontradingexpenceses where login_comp=comp and totalamount is not Null;

	SELECT SUM(totalamount) into intexp from tl_fn_internetexp where login_comp=comp and totalamount is not Null;

	SELECT SUM(totalamount) into postageexp  from tl_fn_postageexp where login_comp=comp and totalamount is not Null;
	
	SELECT SUM(balance) into otherexp from tl_fn_current_asserts where under='IndirectExpenses' and login_comp and balance is not Null;

/**
Auto Travel Expenses
*/
	    
    IF(ISNULL(autoexp)= 1) then 
    SET autoexp=0;
    else
    SELECT SUM(amountdue) INTO autoexp FROM tl_fn_autoexpencestravel where login_comp=comp and amountdue is not Null;
   
    END IF;
     select autoexp;
/**
Phone Bill Exp
*/    IF(ISNULL(phonebillexp)=1)then
	SET phonebillexp=0;
	else
    SELECT SUM(amountdue) INTO phonebillexp FROM tl_fn_phonebillexpences where login_comp=comp and amountdue is not Null;	
    END IF;
    SELECT phonebillexp;
    
/**
Advertisment
*/    
   IF(ISNULL(advertisement)=1) then
    SET advertisement=0;
    else
    SELECT SUM(amount) INTO advertisement from tl_fn_advertisementexp where login_comp=comp and amount is not Null;
    SELECT advertisement;
    END IF;
    
 /**
 Food Expenses
 */   
 IF(ISNULL(foodexp)=1)then
 SET foodexp=0;
 else
 SELECT SUM(amountdue) INTO foodexp from tl_fn_foodexpenses where login_comp=comp and amountdue is not Null;
 END IF;
 select foodexp;
 
 
/**Office Expenses*/    
IF(ISNULL(officeexp)=1)then
SET officeexp=0;
else
SELECT SUM(total) INTO officeexp from tl_fn_officeexp where login_comp=comp and total is not Null;
END IF;
    SELECT officeexp;
/**
Postage Expenses*/    
IF(ISNULL(postageexp)=1)then 
	SET postageexp=0;
else
 SELECT SUM(totalamount) INTO postageexp from tl_fn_postageexp where login_comp=comp and totalamount is not Null;
 END IF;
    SELECT postageexp;
 /**
 Repair Expenses*/   

IF(ISNULL(repairexp)=1)then
SET repairexp=0;
else
	SELECT SUM(total) INTO repairexp from tl_fn_repairmaintenance where login_comp=comp and total is not Null;
end IF;

    SELECT repairexp;

IF(ISNULL(totalamount)=1)then
	SET hoteexp=0;
else
	SELECT SUM(totalamount) into hoteexp from tl_fn_hotelexpenses where login_comp=comp and totalamount is not Null;
END IF;
select hoteexp;
       
IF(ISNULL(entertainmentexp)=1) then
	SET entertainmentexp=0;
else
	select SUM(amountdue) INTO entertainmentexp from tl_fn_entertainmentexpenceses where login_comp=comp and amountdue is not NULL;
END IF;

select entertainmentexp;

IF(ISNULL(misexp)=1)then 
	SET misexp=0;
else
	SELECT SUM(amount) INTO misexp from tl_fn_misleniousexpenceses where login_comp=comp and amount is not Null;
END IF;
SELECT misexp;

IF(ISNULL(nontrading)=1)then 
	SET nontrading=0;
else
	SELECT SUM(totalamount) into nontrading from tl_fn_nontradingexpenceses where login_comp=comp and totalamount is not Null;
END IF;
 
SELECT nontrading;

IF(ISNULL(intexp)=1)then
SET intexp=0;
else
SELECT SUM(totalamount) into intexp from tl_fn_internetexp where login_comp=comp and totalamount is not Null;
END IF;

SELECT intexp;

SELECT(ISNULL(postageexp));

IF(ISNULL(postageexp)=0)then
SET postageexp=0;
else
SELECT SUM(totalamount) into postageexp  from tl_fn_postageexp where login_comp=comp and totalamount is not Null;
END IF;
SELECT postageexp;

IF(ISNULL(otherexp)=1)then
SELECT ISNULL(otherexp);
SET otherexp=0;
else
SELECT SUM(balance) into otherexp from tl_fn_current_asserts where under='IndirectExpenses' and login_comp and balance is not Null;
END IF;

SELECT otherexp;

SET totalamount=phonebillexp+autoexp+advertisement+officeexp+repairexp+foodexp+hoteexp+entertainmentexp+misexp+nontrading+intexp+postageexp+otherexp;
	
	select totalamount;
    
END //

DELIMITER ;	