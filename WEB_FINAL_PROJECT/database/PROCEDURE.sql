DELIMITER $$
CREATE PROCEDURE updateAmount(id BIGINT,SL int)
BEGIN
   update product set Amount = Amount + SL where ProductID=id;
END; $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE updateAmountWhenRevertStatus(id BIGINT,SL int)
BEGIN
   update product set Amount = Amount - SL where ProductID=id;
END; $$
DELIMITER ;