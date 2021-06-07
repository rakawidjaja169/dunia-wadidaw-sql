/*
Profit Report
Created by Ronaldo Katriel Widjaja
Informatics 2018
01082180018
*/

USE `classicmodels`;
DROP TABLE IF EXISTS `profitReport`;

CREATE TABLE `profitReport` (DATA CHAR(200));
	
USE `classicmodels`;
DROP PROCEDURE IF EXISTS profit_Report;

DELIMITER $$
USE `classicmodels` $$
CREATE PROCEDURE profit_Report()
BEGIN

	##Rides Transaction
	DECLARE a VARCHAR(10);
	DECLARE b INT;
	DECLARE rideName VARCHAR(20); 
	DECLARE qtyRide INT;
	DECLARE priceRide INT;
	DECLARE total INT;
	DECLARE totalRevenue INT;
	DECLARE totalRevenueMonth INT;
	
	##Items Transaction
	DECLARE c VARCHAR(10);
	DECLARE d INT;
	DECLARE itemName VARCHAR(20); 
	DECLARE qtyItem INT;
	DECLARE priceItem INT;
	
	##Events Transaction
	DECLARE e VARCHAR(10);
	DECLARE f INT;
	DECLARE eventName VARCHAR(20); 
	DECLARE qtyEvent INT;
	DECLARE priceEvent INT;
	
	##Shows Transaction
	DECLARE g VARCHAR(10);
	DECLARE h INT;
	DECLARE showName VARCHAR(20); 
	DECLARE qtyShow INT;
	DECLARE priceShow INT;
	
	##Foodstall Transaction
	DECLARE foodstallName VARCHAR(45);
	DECLARE foodstallPrice INT;
	
	##Employee Salary
	DECLARE employeeName VARCHAR(45);
	DECLARE salary INT;
	
	##Maintenance Cost
	DECLARE j VARCHAR(10);
	DECLARE k INT;
	DECLARE rideMain VARCHAR(20);
	DECLARE cost INT;
	
	DECLARE monthCounter INT DEFAULT 1;
	DECLARE done INT DEFAULT FALSE;
	DECLARE totalIncome INT;
	DECLARE totalExpense INT;
	DECLARE totalExpenseMonth INT;
	
	##Cursor for Rides
	DECLARE curRide CURSOR FOR
	SELECT MONTHNAME(t.transactionDate) AS Bulan, MONTH(t.transactionDate) AS numberMonth
	FROM classicmodels.transactions AS t, classicmodels.rides_transaction AS rt, classicmodels.rides AS r
	WHERE r.ridesID = rt.ridesID AND rt.transactionID = t.transactionID
	GROUP BY MONTHNAME(t.transactionDate), MONTH(t.transactionDate)
	ORDER BY numberMonth;
	
	##Cursor for Rides Detail
	DECLARE curRideDetail CURSOR FOR
	SELECT r.ridesName AS 'Ride Name', rt.quantity AS Quantity, r.ridesPrice
	FROM classicmodels.transactions AS t, classicmodels.rides_transaction AS rt, classicmodels.rides AS r
	WHERE r.ridesID = rt.ridesID AND rt.transactionID = t.transactionID AND MONTH(t.transactionDate) = monthCounter 
	ORDER BY MONTHNAME(t.transactionDate), r.ridesID;
	
	##Cursor for Items
	DECLARE curItem CURSOR FOR
	SELECT MONTHNAME(t.transactionDate) AS Bulan, MONTH(t.transactionDate) AS numberMonth
	FROM classicmodels.transactions AS t, classicmodels.item_transaction AS it, classicmodels.items AS i
	WHERE i.itemID = it.itemID AND it.transactionID = t.transactionID
	GROUP BY MONTHNAME(t.transactionDate), MONTH(t.transactionDate)
	ORDER BY numberMonth;
	
	##Cursor for Items Detail
	DECLARE curItemDetail CURSOR FOR
	SELECT i.itemName AS 'Item Name', it.quantity AS Quantity, i.itemPrice
	FROM classicmodels.transactions AS t, classicmodels.item_transaction AS it, classicmodels.items AS i
	WHERE i.itemID = it.itemID AND it.transactionID = t.transactionID AND MONTH(t.transactionDate) = monthCounter 
	ORDER BY MONTHNAME(t.transactionDate), i.itemID;
	
	##Cursor for Event
	DECLARE curEvent CURSOR FOR
	SELECT MONTHNAME(t.transactionDate) AS Bulan, MONTH(t.transactionDate) AS numberMonth
	FROM classicmodels.transactions AS t, classicmodels.event_transaction AS et, classicmodels.events AS e
	WHERE e.eventID = et.eventID AND et.transactionID = t.transactionID
	GROUP BY MONTHNAME(t.transactionDate), MONTH(t.transactionDate)
	ORDER BY numberMonth;
	
	##Cursor for Events Detail
	DECLARE curEventDetail CURSOR FOR
	SELECT e.eventName AS 'Event Name', et.quantity AS Quantity, e.eventPrice
	FROM classicmodels.transactions AS t, classicmodels.event_transaction AS et, classicmodels.events AS e
	WHERE e.eventID = et.eventID AND et.transactionID = t.transactionID AND MONTH(t.transactionDate) = monthCounter 
	ORDER BY MONTHNAME(t.transactionDate), e.eventID;
	
	##Cursor for Show
	DECLARE curShow CURSOR FOR
	SELECT MONTHNAME(t.transactionDate) AS Bulan, MONTH(t.transactionDate) AS numberMonth
	FROM classicmodels.transactions AS t, classicmodels.show_transaction AS st, classicmodels.shows AS s
	WHERE s.showID = st.showID AND st.transactionID = t.transactionID
	GROUP BY MONTHNAME(t.transactionDate), MONTH(t.transactionDate)
	ORDER BY numberMonth;
	
	##Cursor for Shows Detail
	DECLARE curShowDetail CURSOR FOR
	SELECT s.showName AS 'Show Name', st.quantity AS Quantity, s.showPrice
	FROM classicmodels.transactions AS t, classicmodels.show_transaction AS st, classicmodels.shows AS s
	WHERE s.showID = st.showID AND st.transactionID = t.transactionID AND MONTH(t.transactionDate) = monthCounter 
	ORDER BY MONTHNAME(t.transactionDate), s.showID;
	
	##Cursor for FoodStall Detail
	DECLARE curFoodDetail CURSOR FOR
	SELECT fs.foodstallName AS 'Foodstall Name', fs.foodstallRent
	FROM  classicmodels.foodstall AS fs 
	ORDER BY fs.foodstallName;
	
	##Cursor for Employee Detail
	DECLARE curSalary CURSOR FOR
	SELECT concat(e.firstName, ' ', e.lastName) AS EmployeeName, e.employeeSalary
	FROM  classicmodels.employees AS e;
	
	##Cursor for Maintenance
	DECLARE curMaintenance CURSOR FOR
	SELECT MONTHNAME(ms.main_date) AS Bulan, MONTH(ms.main_date) AS numberMonth
	FROM classicmodels.maintenance_log AS ms, classicmodels.rides AS r
	WHERE ms.rideID = r.ridesID
	GROUP BY MONTHNAME(ms.main_date), MONTH(ms.main_date)
	ORDER BY numberMonth;
	
	##Cursor for Maintenance Detail
	DECLARE curMaintenanceDetail CURSOR FOR
	SELECT r.ridesName AS 'Ride Name', ms.main_cost
	FROM classicmodels.maintenance_log AS ms, classicmodels.rides AS r
	WHERE ms.rideID = r.ridesID AND MONTH(ms.main_date) = monthCounter
	ORDER BY MONTHNAME(ms.main_date);
	
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	DELETE FROM profitReport;
	INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(43-11),'DUNIA WADIDAW'));
	INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(45-10),'Profit Report'));
	INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(40-11),'Transaction Year 2019'));
	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	INSERT INTO profitReport(DATA) VALUES ('Rides Transaction');
	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	SET totalRevenueMonth = 0;
	SET totalRevenue = 0;
	SET totalIncome = 0;
	
	OPEN curRide;
		getRide : LOOP
			FETCH curRide INTO a,b;
			IF done THEN LEAVE getRide;
			END IF;
			INSERT INTO profitReport(DATA) VALUES (CONCAT('Ride Transaction in ', a,' 2019'));
			SET monthCounter = b;
			OPEN curRideDetail;
				getRide2 : LOOP
					FETCH curRideDetail INTO rideName,qtyRide,priceRide;
					SET total = qtyRide*priceRide;
					SET totalRevenueMonth = totalRevenueMonth + total;
					if done and monthCounter > 1 then SET totalRevenueMonth = totalrevenueMonth - total;
					END if;
					IF done THEN LEAVE getRide2;
					END IF;
					INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(10),rideName, SPACE(30-CHAR_LENGTH(rideName)), qtyRide,'    time(s)', SPACE(10), total));  
				END LOOP;
			INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(5),'Total: ', SPACE(80), totalRevenueMonth));
			CLOSE curRideDetail;
			SET totalRevenue = totalRevenue + totalRevenueMonth;
			SET totalRevenueMonth = 0;
			SET done = FALSE;
			INSERT INTO profitReport(DATA) VALUES('');
		END LOOP;
	CLOSE curRide;
	SET totalIncome = totalIncome + totalRevenue;
	INSERT INTO profitReport(DATA) VALUES (CONCAT('Total for This Year: ', SPACE(50-CHAR_LENGTH(totalRevenue)), totalRevenue));
	
	SET done = FALSE;
		
	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	INSERT INTO profitReport(DATA) VALUES ('Item Transaction');
	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	SET totalRevenueMonth = 0;
	SET totalRevenue = 0;
	
	OPEN curItem;
		getItem : LOOP
			FETCH curItem INTO c,d;
			IF done THEN LEAVE getItem;
			END IF;
			INSERT INTO profitReport(DATA) VALUES (CONCAT('Item Transaction in ', c,' 2019'));
			SET monthCounter = d;
			SET totalRevenueMonth = 0;
			OPEN curItemDetail;
				getItem2 : LOOP
					FETCH curItemDetail INTO itemName,qtyItem,priceItem;
					SET total = qtyItem*priceItem;
					SET totalRevenueMonth = totalRevenueMonth + total;
					if done then SET totalRevenueMonth = totalrevenueMonth - total;
					END if;
					IF done THEN LEAVE getItem2;
					END IF;
					INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(10),itemName, SPACE(30-CHAR_LENGTH(itemName)), qtyItem,'    time(s)', SPACE(10), total));  
				END LOOP;
			INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(5),'Total: ', SPACE(80), totalRevenueMonth));
			CLOSE curItemDetail;
			SET totalRevenue = totalRevenue + totalRevenueMonth;
			SET totalRevenueMonth = 0;
			SET done = FALSE;
			INSERT INTO profitReport(DATA) VALUES('');
		END LOOP;
	CLOSE curItem;
	SET totalIncome = totalIncome + totalRevenue;
	INSERT INTO profitReport(DATA) VALUES (CONCAT('Total for This Year: ', SPACE(50-CHAR_LENGTH(totalRevenue)), totalRevenue));
	
	SET done = FALSE;
	
	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	INSERT INTO profitReport(DATA) VALUES ('Event Transaction');
	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	SET totalRevenueMonth = 0;
	SET totalRevenue = 0;
	
	OPEN curEvent;
		getEvent : LOOP
			FETCH curEvent INTO e,f;
			IF done THEN LEAVE getEvent;
			END IF;
			INSERT INTO profitReport(DATA) VALUES (CONCAT('Event Transaction in ', e,' 2019'));
			SET monthCounter = f;
			SET totalRevenueMonth = 0;
			OPEN curEventDetail;
				getEvent2 : LOOP
					FETCH curEventDetail INTO eventName,qtyEvent,priceEvent;
					SET total = qtyEvent*priceEvent;
					SET totalRevenueMonth = totalrevenueMonth + total;
					if done then SET totalRevenueMonth = totalRevenueMonth - total;
					END if;
					IF done THEN LEAVE getEvent2;
					END IF;
					INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(10),eventName, SPACE(30-CHAR_LENGTH(eventName)), qtyEvent,'    time(s)', SPACE(10), total));  
				END LOOP;
			INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(5),'Total: ', SPACE(80), totalRevenueMonth));
			CLOSE curEventDetail;
			SET totalRevenue = totalRevenue + totalRevenueMonth;
			SET totalRevenueMonth = 0;
			SET done = FALSE;
			INSERT INTO profitReport(DATA) VALUES('');
		END LOOP;
	CLOSE curEvent;
	SET totalIncome = totalIncome + totalRevenue;
	INSERT INTO profitReport(DATA) VALUES (CONCAT('Total for This Year: ', SPACE(70), totalRevenue));
	
	SET done = FALSE;

	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	INSERT INTO profitReport(DATA) VALUES ('Show Transaction');
	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	SET totalRevenueMonth = 0;
	SET totalRevenue = 0;

		OPEN curShow;
		getShow : LOOP
			FETCH curShow INTO g,h;
			IF done THEN LEAVE getShow;
			END IF;
			INSERT INTO profitReport(DATA) VALUES (CONCAT('Show Transaction in ', g,' 2019'));
			SET monthCounter = h;
			SET totalRevenueMonth = 0;
			OPEN curShowDetail;
				getShow2 : LOOP
					FETCH curShowDetail INTO showName,qtyShow,priceShow;
					SET total = qtyShow*priceShow;
					SET totalRevenueMonth = totalrevenueMonth + total;
					if done then SET totalRevenueMonth = totalRevenueMonth - total;
					END if;
					IF done THEN LEAVE getShow2;
					END IF;
					INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(10),showName, SPACE(30-CHAR_LENGTH(showName)), qtyShow,'    time(s)', SPACE(10), total));  
				END LOOP;
			INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(5),'Total: ', SPACE(80), totalRevenueMonth));
			CLOSE curShowDetail;
			SET totalRevenue = totalRevenue + totalRevenueMonth;
			SET totalRevenueMonth = 0;
			SET done = FALSE;
			INSERT INTO profitReport(DATA) VALUES('');
		END LOOP;
	CLOSE curShow;
	SET totalIncome = totalIncome + totalRevenue;
	INSERT INTO profitReport(DATA) VALUES (CONCAT('Total for This Year: ', SPACE(70), totalRevenue));
	
	SET done = FALSE;
	
	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	INSERT INTO profitReport(DATA) VALUES ('Foodstall Rent');
	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	SET totalRevenueMonth = 0;
	SET totalRevenue = 0;
	SET total = 0;
	
	OPEN curFoodDetail;
		getFoodstall : Loop
			FETCH curFoodDetail INTO foodstallName, foodstallPrice;
			IF done THEN LEAVE getFoodstall;
			END IF;
			SET total = total + foodstallPrice;
			INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(10),foodstallName, SPACE(30-CHAR_LENGTH(foodstallName)), SPACE(10), foodstallPrice));
		END LOOP;
		SET done = FALSE;
	CLOSE curFoodDetail;
	SET totalIncome = totalIncome + total;
	INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(5),'Total for this year: ', SPACE(50), total));
	
	SET done = FALSE;
	
	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	INSERT INTO profitReport(DATA) VALUES ('Employee Salary Year 2019');
	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	SET total = 0;
	SET totalExpense = 0;
	
	OPEN curSalary;
		getSalary : Loop
			FETCH curSalary INTO employeeName, salary;
			IF done THEN LEAVE getSalary;
			END IF;
			SET total = total + (salary*12);
			SET totalExpense = totalExpense + total;
			INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(10),employeeName, SPACE(30-CHAR_LENGTH(employeeName)), SPACE(10), total));
			SET total = 0;
		END LOOP;
		SET done = FALSE;
	CLOSE curSalary;
	INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(5),'Total for this year: ', SPACE(50), totalExpense));
	
	SET done = FALSE;
	
	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	INSERT INTO profitReport(DATA) VALUES ('Maintenance Cost');
	INSERT INTO profitReport(DATA) VALUES ('---------------------------------------------------------------------------------');
	SET total = 0;
	
	OPEN curMaintenance;
		getMaintenance : LOOP
			FETCH curMaintenance INTO j,k;
			IF done THEN LEAVE getMaintenance;
			END IF;
			INSERT INTO profitReport(DATA) VALUES (CONCAT('Maintenances in ', j,' 2019'));
			SET monthCounter = k;
			SET totalExpenseMonth = 0;
			OPEN curMaintenanceDetail;
				getMaintenance2 : LOOP
					FETCH curMaintenanceDetail INTO rideMain, cost;
					IF done THEN LEAVE getMaintenance2;
					END IF;
					SET totalExpenseMonth = totalExpenseMonth + cost;
					INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(10),rideMain, SPACE(30-CHAR_LENGTH(rideMain)), SPACE(10), cost));  
				END LOOP;
			INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(5),'Total: ', SPACE(50), totalExpenseMonth));
			SET total = total + totalExpenseMonth;
			CLOSE curMaintenanceDetail;
			SET done = FALSE;
			INSERT INTO profitReport(DATA) VALUES('');
		END LOOP;
	CLOSE curMaintenance;
	SET totalExpense = totalExpense + total;
	INSERT INTO profitReport(DATA) VALUES (CONCAT('Total for This Year: ', SPACE(50-CHAR_LENGTH(total)), total));
	
	SET done = FALSE;
	
	INSERT INTO profitReport(DATA) VALUES ('==========================================================');
	INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(5),'Total all Income: ', SPACE(65), totalIncome));
	INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(5),'Total all Expense: ', SPACE(65), totalExpense));
	INSERT INTO profitReport(DATA) VALUES (CONCAT(SPACE(5),'Total all Transaction: ', SPACE(80), totalIncome - totalExpense));
	SELECT DATA AS 'PROFIT REPORT' FROM profitReport;		
END$$

DELIMITER ;

CALL profit_Report();