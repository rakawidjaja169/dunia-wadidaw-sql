CREATE DATABASE /*!32312 IF NOT EXISTS*/`classicmodels` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `classicmodels`;

DROP TABLE IF EXISTS `visitors`;

CREATE TABLE `visitors` (
  `visitorID` VARCHAR(20) NOT NULL,
  `visitorFirstName` varchar(20) DEFAULT NULL,
  `visitorLastName` varchar(20) default NULL,
  `gender` char(1) NOT NULL,
  `phone` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `balance` INT(11) DEFAULT 0,
  `birthDate` date,
  PRIMARY KEY (`visitorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customers` */

insert  into `visitors`(`visitorID`,`visitorFirstName`,`visitorLastName`,`gender`,`phone`,`email`,`city`,`country`,`balance`,`birthDate`) values 

('V001','Bob','The Builder','M','40322555','bob_thebuilder@bromail.com','Semarang','Indonesia','200000','1992-02-02'),

('V002','Albert','Einstein','M','98729322','alberteinstein@bromail.com','Seattle','Amerika','192300','1998-02-16'),

('V003','Joe','Mama','F','42069391','joemamalover@bromail.com','Medan','Indonesia','1999999','1998-05-16'),

('V004','Ronaldo','Katriel','F','13134371','rakalovegirl@bromail.com','New Delhi','India','444444','1999-06-07'),

('V005','Eugene','Ekaputra','M','131366767','eugenelovedrinks@bromail.com','New Delhi','India','666666','2000-02-07'),

('V006','Luis','Chen','M','131368889','luislovesfood@bromail.com','New Delhi','India','696969','2001-12-13'),

('V007','Spongebob','Squarepants','M','27396728','ilovekrabypaty@bromail.com','Bikini Bottom','Bikini Bottom','200000','2000-04-06'),

('V008','Patrick','Star','M','27397829','iloverock@bromail.com','Bikini Bottom','Bikini Bottom','291900','2000-08-15'),

('V009','Squidward','Tentacles','M','27397123','iloveclarinet@bromail.com','Bikini Bottom','Bikini Bottom','1777777','2002-04-05'),

('V010','Bob','Ross','M','98720304','bobbyross@bromail.com','Seattle','Amerika','1881820','2002-08-15'),

('V011','Christina','Mama','F','4206289','chrismamalover@bromail.com','Medan','Indonesia','2000000','2002-08-22'),

('V012','Kobe','Bryant','M','82710982','kobebryant@bromail.com','Los Angeles','Amerika','300000','1998-11-19'),

('V013','Lebron','James','M','82711134','lebronj@bromail.com','Los Angeles','Amerika','400000','1999-12-31'),

('V014','Edward','Cullen','M','01902233','edwardcool@bromail.com','Bangkok','Thailand','500000','2000-01-17'),

('V015','Tony','Bocah','M','92730283','bocahpetualang@bromail.com','Bogor','Indonesia','690000','2001-03-08'),

('V016','Wigo','Yoyo','F','42068312','yoyolovers@bromail.com','Medan','Indonesia','721000','2002-06-29'),

('V017','Tony','Stark','M','98727322','imdeadlol@bromail.com','Seattle','Amerika','981000','1998-06-12'),

('V018','Steve','Rogers','M','98723820','imoldlol@bromail.com','Seattle','Amerika','0','1998-09-14'),

('V019','Yuri','Tarded','F','42069391','Yuritarded@bromail.com','Tokyo','Japan','20','1999-05-14'),

('V020','Lee','Ping Pong','M','42063910','pingpponglover@bromail.com','Pyongyang','North Korea','1','1999-05-21'),

('V021','Honda','Toyota','M','42062894','ilovecars@bromail.com','Tokyo','Japan','1123123','2000-09-27'),

('V022','Lee','Hong Hing','F','42062784','honghinglover@bromail.com','Pyongyang','North Korea','999','2001-08-25');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employeeID` VARCHAR(5) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `employeeEmail` varchar(50) DEFAULT NULL,
  `employeeAddress` varchar(50) DEFAULT NULL,
  `employeeGender` char(1) NOT NULL,
  `employeeSalary` INT(100) DEFAULT NULL,
  `birthDate` date,
  `employeeDivision` varchar(50) NOT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employees` */

insert  into `employees`(`employeeID`,`firstName`,`lastName`,`employeeEmail`,`employeeAddress`,`employeeGender`,`employeeSalary`,`birthDate`,`employeeDivision`) values 

('E001','Donald','Trump','donaldtrump@email.com','x4623','M','400000','1969-06-19','Head Manager'),

('E002','Patterson','Mary','mary_patterson@email.com','x4611','F','350000','1998-03-22','Technician Manager'),

('E003','Firrelli','Jeff','firrefirre@email.com','x9273','M','350000','1998-08-06','Operator Manager'),

('E004','Patterson','William','william_patterson@email.com','x4871','M','325000','1999-08-16','Operator'),

('E005','Bondur','Gerard','bondurgege@email.com','x5408','F','325000','1999-10-29','Operator'),

('E006','Bow','Anthony','bowwow@email.com','x5428','M','325000','2000-09-15','Operator'),

('E007','Jennings','Leslie','lesliejenn@email.com','x3291','F','325000','1983-03-09','Operator'),

('E008','Thompson','Leslie','lesliethompson@email.com','x4065','F','325000','1985-07-18','Operator'),

('E009','Firrelli','Julie','juliefirefire@email.com','x2173','F','225000','1992-08-23','Operator'),

('E010','Patterson','Steve','pattersonsbro@email.com','x4334','M','225000','2000-04-10','Operator'),

('E011','Joe','William','joe_william@email.com','x4231','F','325000','1999-08-16','Operator'),

('E012','Bibi','Gerard','bibiiu@email.com','x5408','F','325000','1999-10-29','Operator'),

('E013','Quin','Anthony','wowowowo@email.com','x5428','M','325000','2000-09-15','Operator'),

('E014','Jason','Leslie','lesliejason@email.com','x3291','F','325000','1983-01-09','Operator'),

('E015','Peete','Leslie','lesliepeete@email.com','x4065','F','325000','1985-02-18','Operator'),

('E016','Fieri','Julie','juliefieri@email.com','x2173','F','225000','1992-04-21','Operator'),

('E017','Pondok','Steve','pondoksbro@email.com','x4334','M','225000','2000-01-19','Operator'),

('E018','Fixter','Andy','andyfixstuff@email.com','x101','M','225000','1986-03-16','Technician'),

('E019','Marsh','Peter','marhspete@email.com','x102','M','225000','1991-03-18','Technician'),

('E020','King','Tom','tomandjerry@email,com','x103','M','225000','1995-11-12','Technician'),

('E021','Nishi','Mami','papanishi@email.com','x101','F','225000','2001-11-13','Technician'),

('E022','Kato','Yoshimi','katoyoshimi@email,com','x102','F','100000','1984-06-22','Cleaning Service'),

('E023','Gerard','Martin','martingarrix@email.com','x2312','M','100000','1985-02-16','Cleaning Service');

/*Table structure for table `offices` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `supp_name` VARCHAR(20) NOT NULL,
  `supp_phone` varchar(50) NOT NULL,
  `supp_address` varchar(50) NOT NULL,
  `supp_email` varchar(50) NOT NULL,
  `supp_city` varchar(50) DEFAULT NULL,
  `supp_ID` VARCHAR(5) DEFAULT NULL,
  PRIMARY KEY (`supp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `supplier` */

insert  into `supplier`(`supp_name`,`supp_phone`,`supp_address`,`supp_email`,`supp_city`,`supp_ID`) values 

('Fiesta','+1 010120304','100 Market Street','fiesta@email.com','Arizona','S0001'),

('Aqua','+1 087320451','100 Sesame Street','aqua@email.com','Los Angeles','S0002'),

('Somsang','+1 082918381','1 First Street','somsang@email.com','Cisaung','S0003'),

('Oppa','+1 03482397','231 Chigga Street','oppa@email.com','Kuala Lumpur','S0004'),

('Faber Kastil','+1 983219303','Intake Causeway','faberkastil@email.com','Osaka','S0005'),

('So Better','+1 48972389','Cherrywood Mill','sobetter@email.com','Tokyo','S0006'),

('Orao','+1 048734810','Leeds Elms','orao@email.com','Sentul','S0007'),

('Sasra','+1 023812837','Belle Green Close','sasra@email.com','Ardwell','S0008'),

('Yamoho','+1 087423982','Brick Kiln Park','yamoho@email.com','Los Angeles','S0009'),

('Sazaki','+1 0874982792','Smugglers Lane','sazaki@email.com','Bandung','S0010'),

('Hyandal','+1 083871283','Underwood Buildings','hyandal@email.com','Oxford','S0011'),

('Stoam','+1 087388897','Hemberton Road','stoam@email.com','Buaford','S0012'),

('Oregen','+1 087897831','Wren Leaze','oregen@email.com','New York','S0013'),

('Usas','+1 0883428749','Linnet Rise','usas@email.com','Osaka','S0014'),

('Lemovo','+1 078973821','Marion Courtyard','lemovo@email.com','Cisaung','S0015'),

('Tonga','+1 0878379812','Arran Yard','tonga@email.com','Tokyo','S0016'),

('Tayato','+1 087398721','Lynwood Mews','tayato@email.com','Jakarta','S0017'),

('Kanon','+1 0873891289','Woodview Furlong','kanon@email.com','Bogor','S0018'),

('Siny','+1 0873812987','Orwell Valley','siny@email.com','Bekasi','S0019'),

('Fijifilm','+1 08739872','Rayleigh Drive','fijifilm@email.com','Sentul','S0020');

/*Table structure for table `rides` */

DROP TABLE IF EXISTS `rides`;

CREATE TABLE `rides` (
  `ridesName` varchar(20) NOT NULL,
  `ridesID` varchar(15) NOT NULL,
  `ridesPrice` int(11) NOT NULL,
  `ridesCapacity` int(3) NOT NULL,
  `status` varchar(11) NOT NULL,
  PRIMARY KEY (`ridesID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rides` */

insert  into `rides`(`ridesName`,`ridesID`,`ridesPrice`,`ridesCapacity`,`status`) values 

('Halilintar','r0001','20000','30', 'Broken'),

('Bianglala','r0002','15000','15', 'Operational'),

('Istana Boneka','r0003','15000','40', 'Operational'),

('Ontang Anting','r0004','30000','15', 'Broken'),

('Roller Coaster','r0005','40000','20', 'Broken'),

('Rumah Seram','r0006','20000','15', 'Operational'),

('Kora-Kora','r0007','15000','40', 'Operational'),

('Taman Fantasi','r0008','20000','30', 'Operational'),

('Rumah Kaca','r0009','15000','10', 'Operational'),

('Alap-alap','r0010','20000','15', 'Operational'),

('Tornado','r0011','20000','15', 'Operational'),

('4D Adventure','r0012','40000','30', 'Operational'),

('Scary Mummy','r0013','20000','20', 'Operational'),

('Hotdog Run','r0014','30000','20', 'Operational'),

('Money Heist','r0015','30000','30', 'Operational');

/*Table structure for table `foodStall` */

DROP TABLE IF EXISTS `foodStall`;

CREATE TABLE `foodStall` (
  `foodstallName` varchar(45) NOT NULL,
  `foodstallPhone` varchar(20) NOT NULL,
  `foodstallID` varchar(15) NOT NULL,
  `foodstallEmail` varchar(30) DEFAULT NULL,
  `foodstallRent` int(11) NOT NULL,
  PRIMARY KEY (`foodstallID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `foodStall` */

insert  into `foodStall`(`foodstallName`,`foodstallPhone`,`foodstallID`,`foodstallEmail`,`foodstallRent`) values 

('Bite Moguls','+1 74823748','fs001','bitemoguls@email.com','5000000'),

('Foodienator','+1 89734298','fs002','foodienator@email.com','4500000'),

('Pan Frombies','+1 23483084','fs003','panfrombies@email.com','3000000'),

('SnackOPedia','+1 58439932','fs004','snackopedia@email.com','5500000'),

('Mexilicious','+1 878234832','fs005','mexilicious@email.com','3500000'),

('Boogie Bacon Boom','+1 87342848','fs006','boogiebaconboom@email.com','5250000'),

('Snack Zillas','+1 64324872','fs007','snackzillas@email.com','4750000'),

('HenEggMattic','+1 54345738','fs008','heneggmattic@email.com','5750000'),

('Yumniastic','+1 32249234','fs009','yumniastic@email.com','4500000'),

('Kebab O’ Bahar','+1 893724928','fs010','kebabobahar@email.com','4750000');

DROP TABLE IF EXISTS `shows`;

CREATE TABLE `shows` (
  `showID` VARCHAR(11) NOT NULL,
  `showName` varchar(20) NOT NULL,
  `showSeat` INT(11) NOT NULL,
  `showPrice` INT(11) NOT NULL,
  PRIMARY KEY (`showID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `show` */

insert  into `shows`(`showID`,`showName`,`showSeat`,`showPrice`) VALUES 

('SH001','Magic House','300','50000'),

('SH002','Feeding Show','245','30000'),

('SH003','Theater Play','500','50000'),

('SH004','Magical Unicorns','400','25000'),

('SH005','Circus','300','70000'),

('SH006','Film Cinema','100','25000');

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `eventID` VARCHAR(11) NOT NULL,
  `eventName` varchar(20) NOT NULL,
  `eventSeat` INT(11) NOT NULL,
  `eventPrice` INT(11) NOT NULL,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `event` */

insert  into `events`(`eventID`,`eventName`,`eventSeat`,`eventPrice`) VALUES 

('EV0001','Live Concert','2000','150000'),

('EV0002','Friday Horror Nights','1400','100000'),

('EV0003','Electron Fun','5000','50000');

DROP TABLE IF EXISTS `stores`;

CREATE TABLE IF NOT EXISTS `stores` (
  `storeID` varchar(50) NOT NULL,
  `storeLocation` varchar(50) NOT NULL,
  PRIMARY KEY (`storeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stores` */
INSERT INTO `stores` (`storeID`, `storeLocation`) VALUES
('ST0001', 'Entrance'),

('ST0002', 'Tornado'),

('ST0003', 'Roller Coaster'),

('ST0004', 'Exit');

DROP TABLE IF EXISTS `items`;

CREATE TABLE IF NOT EXISTS `items` (
  `itemID` varchar(50) NOT NULL,
  `itemName` varchar(50) DEFAULT NULL,
  `itemQuantity` int(11) DEFAULT NULL,
  `itemMSRP` int(11) DEFAULT NULL,
  `itemPrice` int(11) DEFAULT NULL,
  `supp_ID` varchar(50) DEFAULT NULL,
  `storeID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  KEY `FK_items_stores` (`storeID`),
  KEY `FK_items_supplier` (`supp_ID`),
  CONSTRAINT `FK_items_stores` FOREIGN KEY (`storeID`) REFERENCES `stores` (`storeID`),
  CONSTRAINT `FK_items_supplier` FOREIGN KEY (`supp_ID`) REFERENCES `supplier` (`supp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `items` */
INSERT INTO `items` (`itemID`, `itemName`, `itemQuantity`, `itemMSRP`, `itemPrice`, `supp_ID`, `storeID`) VALUES
('I0001', 'Key Ring', 200, 10000, 30000, 'S0009', 'ST0001'),

('I0002','Mugs', 170, 20000, 130000, 'S0017', 'ST0001'),

('I0003','T-Shirt',500,45000,150000,'S0005','ST0001'),

('I0004','Key Ring 2',482,10000,30000,'S0009','ST0002'),

('I0005','Mugs 2',NULL,20000,130000,'S0017','ST0002'),

('I0006','T-Shirt 2',720,45000,150000,'S0005','ST0002'),

('I0007','Plushie',420,50000,252000,'S0001','ST0002'),

('I0008','Key Ring 3',NULL,10000,30000,'S0009','ST0003'),

('I0009','Mugs 3',NULL,20000,130000,'S0017','ST0003'),

('I0010','T-Shirt 3',398,45000,150000,'S0005','ST0003'),

('I0011','Plushie 2',69,50000,252000,'S0001','ST0003'),

('I0012','Key Ring 4',309,10000,30000,'S0009','ST0004'),

('I0013','Mugs 4',83,20000,130000,'S0017','ST0004'),

('I0014','T-Shirt 4',NULL,45000,150000,'S0005','ST0004'),

('I0015','Plushie 3',67,50000,252000,'S0001','ST0004');

DROP TABLE IF EXISTS `technicians`;

CREATE TABLE `technicians` (
  `techID` VARCHAR(11) NOT NULL,
  `status` VARCHAR(8) NOT NULL,
  `employeeID` VARCHAR(5) NOT NULL,
  `date` DATE,
  PRIMARY KEY (`techID`),
  KEY `FK_technicians_employees` (`employeeID`),
  CONSTRAINT `FK_technicians_employees` FOREIGN KEY (`employeeID`) REFERENCES `employees`(`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert  into `technicians`(`techID`,`employeeID`,`status`,`date`) values 

('TC120219001','E018','Assigned','2019-02-12'),
('TC180219001','E019','Assigned','2019-02-18'),
('TC090319001','E021','Assigned','2019-03-09'),
('TC240319001','E020','Assigned','2019-03-24'),
('TC090419001','E018','Assigned','2019-04-09'),
('TC270419001','E019','Assigned','2019-04-27'),
('TC050519001','E020','Assigned','2019-05-05'),
('TC190619001','E021','Assigned','2019-06-19'),
('TC160719001','E018','Assigned','2019-07-16'),
('TC300719001','E019','Assigned','2019-07-30'),
('TC070819001','E020','Assigned','2019-08-07'),
('TC221119001','E021','Assigned','2019-11-22'),
('TC011219001','E019','Assigned','2019-12-01'),

('TC241119001','E019','Free','2019-11-24'),

('TC241119002','E020','Assigned','2019-11-24'),

('TC241119003','E021','Assigned','2019-11-24'),

('TC251119001','E018','Free','2019-11-25'),

('TC251119002','E019','Free','2019-11-25'),

('TC251119003','E020','Free','2019-11-25');

DROP TABLE IF EXISTS `operators`;

CREATE TABLE `operators` (
  `operatorID` VARCHAR(11) NOT NULL,
  `status` VARCHAR(9) NOT NULL,
  `employeeID` VARCHAR(5) NOT NULL,
  `date` DATE,
  PRIMARY KEY (`operatorID`),
  KEY `FK_operators_employees` (`employeeID`),
  CONSTRAINT `FK_operators_employees` FOREIGN KEY (`employeeID`) REFERENCES `employees`(`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert  into `operators`(`operatorID`,`employeeID`,`status`,`date`) values 

('TC251119001','E006','Assigned','2019-11-25'),

('TC251119002','E007','Assigned','2019-11-25'),

('TC251119003','E008','Assigned','2019-11-25'),

('TC251119004','E009','Assigned','2019-11-25'),

('TC251119005','E010','Assigned','2019-11-25'),

('TC251119006','E011','Assigned','2019-11-25'),

('TC251119007','E012','Assigned','2019-11-25'),

('TC251119008','E013','Assigned','2019-11-25'),

('TC251119009','E014','Assigned','2019-11-25'),

('TC251119010','E015','Assigned','2019-11-25'),

('TC251119011','E016','Assigned','2019-11-25'),

('TC251119012','E017','Assigned','2019-11-25');


DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `transactionID` VARCHAR(11) NOT NULL,
  `transactionDate` DATE,
  `visitorID` VARCHAR(5),
  PRIMARY KEY (`transactionID`),
  KEY `FK_transactions_visitors` (`visitorID`),
  CONSTRAINT `FK_transactions_visitors` FOREIGN KEY (`visitorID`) REFERENCES `visitors` (`visitorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert  into `transactions`(`transactionID`,`visitorID`,`transactionDate`) VALUES 

('TR0001','V022','2019-01-01'),

('TR0002','V002','2019-01-03'),

('TR0003','V001','2019-01-04'),

('TR0004','V012','2019-01-08'),

('TR0005','V003','2019-01-13'),

('TR0006','V004','2019-01-17'),

('TR0007','V020','2019-01-22'),

('TR0008','V015','2019-01-28'),

('TR0009','V018','2019-02-03'),

('TR0010','V012','2019-02-05'),

('TR0011','V003','2019-02-10'),

('TR0012','V004','2019-02-14'),

('TR0013','V005','2019-02-18'),

('TR0014','V006','2019-02-23'),

('TR0015','V007','2019-02-26'),

('TR0016','V014','2019-02-27'),

('TR0017','V012','2019-03-02'),

('TR0018','V019','2019-03-07'),

('TR0019','V007','2019-03-09'),

('TR0020','V004','2019-03-12'),

('TR0021','V002','2019-03-19'),

('TR0022','V009','2019-03-20'),

('TR0023','V007','2019-03-25'),

('TR0024','V004','2019-03-30'),

('TR0025','V018','2019-04-04'),

('TR0026','V013','2019-04-08'),

('TR0027','V017','2019-04-11'),

('TR0028','V005','2019-04-17'),

('TR0029','V006','2019-04-20'),

('TR0030','V002','2019-04-21'),

('TR0031','V001','2019-04-27'),

('TR0032','V013','2019-04-29'),

('TR0033','V012','2019-05-01'),

('TR0034','V019','2019-05-04'),

('TR0035','V011','2019-05-08'),

('TR0036','V012','2019-05-13'),

('TR0037','V013','2019-05-17'),

('TR0038','V014','2019-05-22'),

('TR0039','V015','2019-05-24'),

('TR0040','V021','2019-05-28'),

('TR0041','V020','2019-06-03'),

('TR0042','V020','2019-06-06'),

('TR0043','V019','2019-06-10'),

('TR0044','V018','2019-06-16'),

('TR0045','V017','2019-06-18'),

('TR0046','V016','2019-06-21'),

('TR0047','V005','2019-06-27'),

('TR0048','V004','2019-06-30'),

('TR0049','V001','2019-07-04'),

('TR0050','V002','2019-07-06'),

('TR0051','V003','2019-07-12'),

('TR0052','V022','2019-07-16'),

('TR0053','V002','2019-07-18'),

('TR0054','V001','2019-07-24'),

('TR0055','V012','2019-07-26'),

('TR0056','V003','2019-07-31'),

('TR0057','V004','2019-08-01'),

('TR0058','V020','2019-08-08'),

('TR0059','V015','2019-08-12'),

('TR0060','V018','2019-08-23'),

('TR0061','V012','2019-08-24'),

('TR0062','V003','2019-08-26'),

('TR0063','V004','2019-08-28'),

('TR0064','V005','2019-08-30'),

('TR0065','V006','2019-09-01'),

('TR0066','V007','2019-09-08'),

('TR0067','V014','2019-09-14'),

('TR0068','V012','2019-09-16'),

('TR0069','V019','2019-09-20'),

('TR0070','V007','2019-09-23'),

('TR0071','V004','2019-09-26'),

('TR0072','V002','2019-09-28'),

('TR0073','V009','2019-10-02'),

('TR0074','V007','2019-10-04'),

('TR0075','V004','2019-10-08'),

('TR0076','V018','2019-10-11'),

('TR0077','V013','2019-10-17'),

('TR0078','V017','2019-10-19'),

('TR0079','V005','2019-10-25'),

('TR0080','V006','2019-10-31'),

('TR0081','V002','2019-11-03'),

('TR0082','V001','2019-11-06'),

('TR0083','V013','2019-11-10'),

('TR0084','V012','2019-11-11'),

('TR0085','V019','2019-11-14'),

('TR0086','V011','2019-11-17'),

('TR0087','V012','2019-11-18'),

('TR0088','V013','2019-11-22'),

('TR0089','V014','2019-11-25'),

('TR0090','V015','2019-12-01'),

('TR0091','V021','2019-12-04'),

('TR0092','V020','2019-12-09'),

('TR0093','V020','2019-12-13'),

('TR0094','V019','2019-12-16'),

('TR0095','V018','2019-12-18'),

('TR0096','V017','2019-12-20'),

('TR0097','V016','2019-12-23'),

('TR0098','V005','2019-12-25'),

('TR0099','V004','2019-12-27'),

('TR0100','V001','2019-12-29'),

('TR0101','V002','2019-12-31');

DROP TABLE IF EXISTS `shows_schedule`;

CREATE TABLE `shows_schedule` (
  `show_date` DATE,
  `show_time` TIME,
  `showID` VARCHAR(11) NOT NULL,
  KEY `FK_schedule_shows` (`showID`),
  CONSTRAINT `FK_schedule_shows` FOREIGN KEY (`showID`) REFERENCES `shows` (`showID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table show */

insert  into `shows_schedule`(`show_date`,`show_time`,`showID`) VALUES 

('2019-05-09','12:15:00','SH001'),

('2019-09-01','16:00:00','SH002'),

('2019-02-23','10:30:00','SH003'),

('2019-01-06','11:25:00','SH004'),

('2019-07-12','12:00:00','SH005'),

('2019-11-30','15:30:00','SH006');

DROP TABLE IF EXISTS `events_schedule`;

CREATE TABLE `events_schedule` (
  `event_date` DATE,
  `event_time` TIME,
  `eventID` VARCHAR(11) NOT NULL,
  KEY `FK_schedule_events` (`eventID`),
  CONSTRAINT `FK_schedule_events` FOREIGN KEY (`eventID`) REFERENCES `events` (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table events_schedule */

insert  into `events_schedule`(`event_date`,`event_time`,`eventID`) VALUES 

('2019-12-31','17:00:00','EV0001'),

('2019-10-14','12:15:00','EV0002'),

('2019-04-30','19:00:00','EV0003');

DROP TABLE IF EXISTS `shifts`;

CREATE TABLE `shifts` (
  `employeeID` VARCHAR(5) NOT NULL,
  `in_time` TIME,
  `out_time` TIME,
  `day` VARCHAR(9) NOT NULL,
  KEY `FK_shifts_employees` (`employeeID`),
  CONSTRAINT `FK_shifts_employees` FOREIGN KEY (`employeeID`) REFERENCES `employees`(`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert  into `shifts`(`in_time`,`out_time`,`day`,`employeeID`) VALUES 

('5:29:01','19:31:39','Monday','E001'),

('5:29:01','19:31:39','Tuesday','E001'),

('5:29:01','19:31:39','Wednesday','E001'),

('5:29:01','19:31:39','Thursday','E001'),

('5:29:01','19:31:39','Friday','E001'),

('5:29:01','19:31:39','Saturday','E001'),

('5:29:01','19:31:39','Sunday','E001'),

('5:25:01','19:32:23','Monday','E002'),

('5:25:01','19:32:23','Tuesday','E002'),

('5:25:01','19:32:23','Wednesday','E002'),

('5:25:01','19:32:23','Thursday','E002'),

('5:25:01','19:32:23','Friday','E002'),

('5:25:01','19:32:23','Saturday','E002'),

('5:25:01','19:32:23','Sunday','E002'),

('5:22:01','19:33:25','Monday','E003'),

('5:22:01','19:33:25','Tuesday','E003'),

('5:22:01','19:33:25','Wednesday','E003'),

('5:22:01','19:33:25','Thursday','E003'),

('5:22:01','19:33:25','Friday','E003'),

('5:22:01','19:33:25','Saturday','E003'),

('5:22:01','19:33:25','Sunday','E003'),

('6:29:08','18:34:43','Tuesday','E004'),

('6:29:08','18:34:43','Wednesday','E004'),

('6:29:08','18:34:43','Thursday','E004'),

('6:29:08','18:34:43','Friday','E004'),

('6:29:08','18:34:43','Saturday','E004'),

('6:29:08','18:34:43','Sunday','E004'),

('6:19:29','18:35:23','Tuesday','E005'),

('6:19:29','18:35:23','Wednesday','E005'), 

('6:19:29','18:35:23','Thursday','E005'), 

('6:19:29','18:35:23','Friday','E005'), 

('6:19:29','18:35:23','Saturday','E005'), 

('6:19:29','18:35:23','Sunday','E005'), 

('6:10:00','19:06:00','Monday','E006'),

('6:10:00','19:06:00','Wednesday','E006'),

('6:10:00','19:06:00','Thursday','E006'),

('6:10:00','19:06:00','Friday','E006'),

('6:10:00','19:06:00','Saturday','E006'),

('6:10:00','19:06:00','Sunday','E006'),

('6:30:18','17:27:29','Monday','E007'),

('6:30:18','17:27:29','Wednesday','E007'),

('6:30:18','17:27:29','Thursday','E007'),

('6:30:18','17:27:29','Friday','E007'),

('6:30:18','17:27:29','Saturday','E007'),

('6:30:18','17:27:29','Sunday','E007'),

('6:44:12','19:38:29','Monday','E008'),

('6:44:12','19:38:29','Tuesday','E008'),

('6:44:12','19:38:29','Thursday','E008'),

('6:44:12','19:38:29','Friday','E008'),

('6:44:12','19:38:29','Saturday','E008'),

('6:44:12','19:38:29','Sunday','E008'),

('6:27:37','18:39:29','Monday','E009'),

('6:27:37','18:39:29','Tuesday','E009'),

('6:27:37','18:39:29','Thursday','E009'),

('6:27:37','18:39:29','Friday','E009'),

('6:27:37','18:39:29','Saturday','E009'),

('6:27:37','18:39:29','Sunday','E009'),

('6:47:29','18:30:29','Monday','E010'), 

('6:47:29','18:30:29','Tuesday','E010'), 

('6:47:29','18:30:29','Wednesday','E010'), 

('6:47:29','18:30:29','Friday','E010'), 

('6:47:29','18:30:29','Saturday','E010'), 

('6:47:29','18:30:29','Sunday','E010'), 

('7:49:00','19:21:23','Monday','E011'),

('7:49:00','19:21:23','Tuesday','E011'),

('7:49:00','19:21:23','Wednesday','E011'),

('7:49:00','19:21:23','Friday','E011'),

('7:49:00','19:21:23','Saturday','E011'),

('7:49:00','19:21:23','Monday','E011'),

('7:28:02','19:32:36','Monday','E012'),

('7:28:02','19:32:36','Tuesday','E012'),

('7:28:02','19:32:36','Wednesday','E012'),

('7:28:02','19:32:36','Thursday','E012'),

('7:28:02','19:32:36','Saturday','E012'),

('7:28:02','19:32:36','Sunday','E012'),

('5:27:04','19:43:37','Monday','E013'),

('5:27:04','19:43:37','Tuesday','E013'),

('5:27:04','19:43:37','Wednesday','E013'),

('5:27:04','19:43:37','Thursday','E013'),

('5:27:04','19:43:37','Saturday','E013'),

('5:27:04','19:43:37','Sunday','E013'),

('6:56:06','17:54:09','Monday','E014'),

('6:56:06','17:54:09','Tuesday','E014'),

('6:56:06','17:54:09','Wednesday','E014'),

('6:56:06','17:54:09','Thursday','E014'),

('6:56:06','17:54:09','Friday','E014'),

('6:56:06','17:54:09','Sunday','E014'),

('6:15:28','17:15:08','Monday','E015'), 

('6:15:28','17:15:08','Tuesday','E015'), 

('6:15:28','17:15:08','Wednesday','E015'), 

('6:15:28','17:15:08','Thursday','E015'), 

('6:15:28','17:15:08','Friday','E015'), 

('6:15:28','17:15:08','Sunday','E015'), 

('6:24:01','18:26:07','Monday','E016'),

('6:24:01','18:26:07','Tuesday','E016'),

('6:24:01','18:26:07','Wednesday','E016'),

('6:24:01','18:26:07','Thursday','E016'),

('6:24:01','18:26:07','Friday','E016'),

('6:24:01','18:26:07','Saturday','E016'),

('9:13:13','19:37:06','Monday','E017'),

('9:13:13','19:37:06','Tuesday','E017'),

('9:13:13','19:37:06','Wednesday','E017'),

('9:13:13','19:37:06','Thursday','E017'),

('9:13:13','19:37:06','Friday','E017'),

('9:13:13','19:37:06','Saturday','E017'),

('5:02:15','19:48:06','Monday','E018'),

('5:02:15','19:48:06','Tuesday','E018'),

('5:02:15','19:48:06','Wednesday','E018'),

('5:02:15','19:48:06','Friday','E018'),

('5:02:15','19:48:06','Saturday','E018'),

('6:21:37','19:59:05','Monday','E019'),

('6:21:37','19:59:05','Tuesday','E019'),

('6:21:37','19:59:05','Thursday','E019'),

('6:21:37','19:59:05','Saturday','E019'),

('6:21:37','19:59:05','Sunday','E019'),

('4:50:29','19:00:04','Monday','E020'), 

('4:50:29','19:00:04','Wednesday','E020'), 

('4:50:29','19:00:04','Thursday','E020'), 

('4:50:29','19:00:04','Friday','E020'), 

('4:50:29','19:00:04','Sunday','E020'), 

('4:37:00','19:34:29','Tuesday','E021'),

('4:37:00','19:34:29','Wednesday','E021'),

('4:37:00','19:34:29','Thursday','E021'),

('4:37:00','19:34:29','Friday','E021'),

('4:37:00','19:34:29','Saturday','E021'),

('4:37:00','19:34:29','Sunday','E021'),

('6:21:37','19:59:05','Monday','E022'),

('6:21:37','19:59:05','Wednesday','E022'),

('6:21:37','19:59:05','Friday','E022'),

('6:21:37','19:59:05','Sunday','E022'),

('4:38:29','19:32:04','Tuesday','E023'),

('4:38:29','19:32:04','Thursday','E023'),

('4:38:29','19:32:04','Saturday','E023');

CREATE TABLE IF NOT EXISTS maintenance_log (
  `main_date` date DEFAULT NULL,
  `main_cost` INT(50) DEFAULT NULL,
  `rideID` varchar(15) DEFAULT NULL,
  `techID` VARCHAR(11) NOT NULL,
  `status` VARCHAR(11) NOT NULL,
  KEY FK_maintenance_schedule_rides (`rideID`),
  KEY FK_maintenance_schedule_technicians (`techID`),
  CONSTRAINT FK_maintenance_schedule_rides FOREIGN KEY (`rideID`) REFERENCES `rides`(`ridesID`),
  CONSTRAINT FK_maintenance_schedule_technicians FOREIGN KEY (`techID`) REFERENCES `technicians`(`techID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO maintenance_log (`main_date`,`main_cost`,`rideID`,`techID`,`status`) VALUES
 ('2019-08-07','300000', 'r0010','TC070819001','Finished'),
 ('2019-02-12','400000', 'r0012','TC120219001','Finished'),
 ('2019-11-22','500000', 'r0002','TC221119001','Finished'),
 ('2019-07-16','322000', 'r0001','TC160719001','Finished'),
 ('2019-03-24','340000', 'r0014','TC240319001','Finished'),
 ('2019-03-09','300000', 'r0003','TC090319001','Finished'),
 ('2019-05-05','300000', 'r0007','TC050519001','Finished'),
 ('2019-12-01','300000', 'r0015','TC011219001','Finished'),
 ('2019-11-24','300000', 'r0004','TC241119002','Finished'),
 ('2019-11-24','420000', 'r0005','TC241119003','In-Progress'),
 ('2019-04-09','570000', 'r0009','TC090419001','Finished'),
 ('2019-07-30','420000', 'r0006','TC300719001','Finished'),
 ('2019-06-19','170000', 'r0013','TC190619001','Finished'),
 ('2019-04-27','290000', 'r0008','TC270419001','Finished'),
 ('2019-02-18','310000', 'r0011','TC180219001','Finished');

DROP TABLE IF EXISTS `rides_transaction`;

CREATE TABLE `rides_transaction` (
  `transactionID` VARCHAR(11),
  `ridesID` VARCHAR(15),
  `quantity` INT(11) NOT NULL,
  KEY `FK_rides_transaction` (`transactionID`),
  KEY `FK_rides_rides` (`ridesID`),
  CONSTRAINT `FK_rides_transaction` FOREIGN KEY (`transactionID`) REFERENCES `transactions`(`transactionID`),
  CONSTRAINT `FK_rides_rides` FOREIGN KEY (`ridesID`) REFERENCES `rides`(`ridesID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert  into `rides_transaction`(`transactionID`,`ridesID`,`quantity`) VALUES 

('TR0001','r0007',2),

('TR0005','r0003',3),

('TR0008','r0009',10),

('TR0013','r0002',5),

('TR0018','r0010',1),

('TR0021','r0001',2),

('TR0025','r0003',3),

('TR0028','r0004',12),

('TR0029','r0005',5),

('TR0030','r0015',1),

('TR0031','r0006',2),

('TR0035','r0008',3),

('TR0038','r0010',5),

('TR0042','r0012',5),

('TR0043','r0014',5),

('TR0049','r0001',2),

('TR0050','r0003',3),

('TR0053','r0005',9),

('TR0056','r0007',8),

('TR0059','r0009',3),

('TR0067','r0011',2),

('TR0069','r0013',12),

('TR0071','r0001',20),

('TR0073','r0002',1),

('TR0075','r0003',15), 

('TR0077','r0005',2),

('TR0079','r0007',3),

('TR0081','r0011',1),

('TR0083','r0013',5),

('TR0085','r0001',1),

('TR0087','r0010',6),

('TR0089','r0015',8),

('TR0091','r0005',2),

('TR0093','r0002',1),

('TR0095','r0004',10),

('TR0097','r0006',5),

('TR0098','r0008',4),

('TR0099','r0010',2),

('TR0100','r0005',7),

('TR0101','r0015',2);

DROP TABLE IF EXISTS `show_transaction`;

CREATE TABLE IF NOT EXISTS `show_transaction` (
  `transactionID` varchar(11) DEFAULT NULL,
  `showID` varchar(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  KEY `FK_show_transaction_transactions` (`transactionID`),
  KEY `FK_show_transaction_shows` (`showID`),
  CONSTRAINT `FK_show_transaction_shows` FOREIGN KEY (`showID`) REFERENCES `shows` (`showID`),
  CONSTRAINT `FK_show_transaction_transactions` FOREIGN KEY (`transactionID`) REFERENCES `transactions` (`transactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `show_transaction` (`transactionID`, `showID`, `quantity`) VALUES

 ('TR0003', 'SH005', 5),

 ('TR0054', 'SH002', 3),

 ('TR0062', 'SH001', 10),

 ('TR0041', 'SH006', 1),

 ('TR0072', 'SH004', 2),

 ('TR0096', 'SH003', 3),

 ('TR0010', 'SH001', 5),

 ('TR0016', 'SH005', 8),

 ('TR0019', 'SH002', 7),

 ('TR0037', 'SH001', 1),

 ('TR0044', 'SH005', 2),

 ('TR0047', 'SH004', 3),

 ('TR0055', 'SH006', 1),

 ('TR0060', 'SH002', 15),

 ('TR0065', 'SH002', 2),

 ('TR0070', 'SH006', 2),

 ('TR0074', 'SH004', 3),

 ('TR0088', 'SH001', 3),

 ('TR0092', 'SH005', 4),

 ('TR0094', 'SH002', 4);
 
 DROP TABLE IF EXISTS `event_transaction`;
 
 CREATE TABLE IF NOT EXISTS `event_transaction` (
  `transactionID` varchar(11) DEFAULT NULL,
  `eventID` varchar(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  KEY `FK_event_transaction_transactions` (`transactionID`),
  KEY `FK_event_transaction_events` (`eventID`),
  CONSTRAINT `FK_event_transaction_transactions` FOREIGN KEY (`transactionID`) REFERENCES `transactions` (`transactionID`),
  CONSTRAINT `FK_event_transaction_events` FOREIGN KEY (`eventID`) REFERENCES `events` (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `event_transaction` (`transactionID`, `eventID`, `quantity`) VALUES

 ('TR0002', 'EV0003', 5),

 ('TR0004', 'EV0002', 3),

 ('TR0015', 'EV0001', 2),

 ('TR0017', 'EV0001', 6),

 ('TR0022', 'EV0002', 2),

 ('TR0023', 'EV0003', 6),

 ('TR0033', 'EV0001', 1),

 ('TR0036', 'EV0002', 8),

 ('TR0040', 'EV0002', 7),

 ('TR0051', 'EV0001', 6),

 ('TR0052', 'EV0003', 9),

 ('TR0066', 'EV0001', 2),

 ('TR0068', 'EV0001', 8),

 ('TR0090', 'EV0002', 2),

 ('TR0078', 'EV0003', 9),

 ('TR0070', 'EV0002', 2),

 ('TR0060', 'EV0001', 5),

 ('TR0061', 'EV0001', 3),

 ('TR0024', 'EV0003', 7),

 ('TR0080', 'EV0002', 4);
 
 DROP TABLE IF EXISTS `item_transaction`;
 
 CREATE TABLE IF NOT EXISTS `item_transaction` (
  `transactionID` varchar(11) DEFAULT NULL,
  `itemID` varchar(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  KEY `FK_item_transaction_transactions` (`transactionID`),
  KEY `FK_item_transaction_items` (`itemID`),
  CONSTRAINT `FK_item_transaction_transactions` FOREIGN KEY (`transactionID`) REFERENCES `transactions` (`transactionID`),
  CONSTRAINT `FK_item_transaction_items` FOREIGN KEY (`itemID`) REFERENCES `items` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `item_transaction` (`transactionID`, `itemID`, `quantity`) VALUES

 ('TR0006', 'I0001', 5),

 ('TR0007', 'I0003', 3),

 ('TR0009', 'I0002', 2),

 ('TR0011', 'I0007', 11),

 ('TR0012', 'I0010', 2),

 ('TR0014', 'I0011', 6),

 ('TR0020', 'I0013', 5),

 ('TR0026', 'I0015', 8),

 ('TR0027', 'I0002', 7),

 ('TR0032', 'I0004', 6),

 ('TR0034', 'I0006', 9),

 ('TR0039', 'I0007', 7),

 ('TR0045', 'I0010', 1),

 ('TR0046', 'I0012', 2),

 ('TR0048', 'I0013', 9),

 ('TR0057', 'I0015', 2),

 ('TR0058', 'I0001', 5),

 ('TR0063', 'I0002', 3),

 ('TR0064', 'I0003', 7),

 ('TR0082', 'I0004', 10),

 ('TR0084', 'I0006', 4);


 DROP TABLE IF EXISTS `supplier_supply`;
 CREATE TABLE IF NOT EXISTS `supplier_supply` (
  `suppSupplyID` VARCHAR(11) NOT NULL,
  `suppSupplyDate` DATE,
  `supp_ID` VARCHAR(5) NOT NULL,
  `itemID` VARCHAR (5) NOT NULL,
  `quantity` INT (2) NOT NULL,
  PRIMARY KEY (`suppSupplyID`),
  KEY `FK_supplier_supply_supplier` (`supp_ID`),
  KEY `FK_supplier_supply_items` (`itemID`),
  CONSTRAINT `FK_supplier_supply_supplier` FOREIGN KEY (`supp_ID`) REFERENCES `supplier` (`supp_ID`),
  CONSTRAINT `FK_supplier_supply_items` FOREIGN KEY (`itemID`) REFERENCES `items` (`itemID`)
 
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `supplier_supply`(`suppSupplyID`, `suppSupplyDate`, `supp_ID`, `itemID`, `quantity`) VALUES
('U0001', '2019-01-01', 'S0001', 'I0001', 100),

('U0002', '2019-01-01', 'S0002', 'I0002', 150),

('U0003', '2019-01-01', 'S0003', 'I0003', 145),

('U0004', '2019-01-01', 'S0004', 'I0004', 40),

('U0005', '2019-01-01', 'S0005', 'I0005', 70),

('U0006', '2019-01-01', 'S0006', 'I0006', 25),

('U0007', '2019-01-01', 'S0007', 'I0007', 30),

('U0008', '2019-02-12', 'S0008', 'I0008', 100),

('U0009', '2019-02-20', 'S0009', 'I0009', 50),

('U0010', '2019-03-10', 'S0010', 'I0010', 120),

('U0011', '2019-03-25', 'S0011', 'I0011', 125),

('U0012', '2019-03-31', 'S0012', 'I0012', 110),

('U0013', '2019-04-05', 'S0013', 'I0013', 45),

('U0014', '2019-04-10', 'S0014', 'I0014', 55),

('U0015', '2019-04-16', 'S0015', 'I0015', 60),

('U0016', '2019-04-26', 'S0016', 'I0001', 150),

('U0017', '2019-05-05', 'S0017', 'I0002', 25),

('U0018', '2019-05-17', 'S0018', 'I0003', 35),

('U0019', '2019-05-26', 'S0019', 'I0004', 70),

('U0020', '2019-05-29', 'S0020', 'I0005', 10),

('U0021', '2019-06-04', 'S0005', 'I0006', 150),

('U0022', '2019-06-11', 'S0001', 'I0001', 100),

('U0023', '2019-06-20', 'S0010', 'I0010', 120),

('U0024', '2019-07-25', 'S0019', 'I0007', 70),

('U0025', '2019-08-17', 'S0018', 'I0008', 35),

('U0026', '2019-09-20', 'S0004', 'I0004', 40),

('U0027', '2019-10-05', 'S0006', 'I0006', 25),

('U0028', '2019-10-27', 'S0002', 'I0002', 150),

('U0029', '2019-10-31', 'S0008', 'I0008', 100),

('U0030', '2019-11-08', 'S0020', 'I0010', 10);
