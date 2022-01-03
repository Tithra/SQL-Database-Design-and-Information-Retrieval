--Disable FK constrains
ALTER TABLE LOGS DISABLE CONSTRAINT FK_LOGS_User_ID_to_Students_ID;
ALTER TABLE LOGS DISABLE CONSTRAINT FK_LOGS_User_ID_to_Staff_ID;
ALTER TABLE PROGRAMS DISABLE CONSTRAINT FK_PROGRAMS_Director_ID;
ALTER TABLE STUDENTS DISABLE CONSTRAINT FK_STUDENTS_Mentor_ID;
ALTER TABLE STUDENTS DISABLE CONSTRAINT FK_STUDENTS_Adviser_ID;
ALTER TABLE STUDENTS DISABLE CONSTRAINT FK_STUDENTS_Course_Num;
ALTER TABLE STUDENTS DISABLE CONSTRAINT FK_STUDENTS_Place_Num;
ALTER TABLE ROOMS DISABLE CONSTRAINT FK_ROOMS_Residence_Num_to_Hall_Num;
ALTER TABLE ROOMS DISABLE CONSTRAINT FK_ROOMS_Residence_Num_to_Apartment_Num;
ALTER TABLE ROOMS DISABLE CONSTRAINT FK_ROOMS_Residence_Num_to_Flat_Num;
ALTER TABLE GUARDIANS DISABLE CONSTRAINT FK_GUARDIANS_Student_ID;
ALTER TABLE Q_LIST DISABLE CONSTRAINT FK_Q_LIST_Student_ID;
ALTER TABLE INSPECTIONS DISABLE CONSTRAINT FK_INSPECTIONS_Staff_ID;
ALTER TABLE INSPECTIONS DISABLE CONSTRAINT FK_INSPECTIONS_Place_Num;
ALTER TABLE LEASES DISABLE CONSTRAINT FK_LEASES_Place_Num;
ALTER TABLE LEASES DISABLE CONSTRAINT FK_LEASES_Student_ID;
ALTER TABLE INVOICES DISABLE CONSTRAINT FK_INVOICES_Lease_Num;

--Insert into STAFFS (9 records)
Insert into STAFFS (ID,Name,Gender,DOB,Address,Phone,Email,Position,Department,Dep_Phone,Office_Num) values (101,'Jacky D.','M',to_date('10-DEC-1960','DD-MON-RR'),'Liberty Melbourne 2270','0478 373 948','Jacky@deakin.edu.au','Adviser', 'IT Deparment','1223', '1');
Insert into STAFFS (ID,Name,Gender,DOB,Address,Phone,Email,Position,Department,Dep_Phone,Office_Num) values (201, 'Robert M.', 'M', to_date('12-MAR-1977','DD-MON-RR'), 'Rodan Melbourne 2271', '0479 373 948', 'Robert@deakin.edu.au', 'Program Director', 'Social Science', NULL, '2');
Insert into STAFFS (ID,Name,Gender,DOB,Address,Phone,Email,Position,Department,Dep_Phone,Office_Num) values (102, 'Emily K.', 'F', to_date('21-DEC-1955','DD-MON-RR'), 'Black Melbourne 2272', '0480 373 948', 'Emily@deakin.edu.au', 'Adviser', 'IT Deparment', '1224', '3');
Insert into STAFFS (ID,Name,Gender,DOB,Address,Phone,Email,Position,Department,Dep_Phone,Office_Num) values (301, 'John B.', 'M', to_date('23-OCT-1957','DD-MON-RR'), 'Dello Melbourne 2273', '0481 373 948', 'John@deakin.edu.au', 'Accommodation staff', 'Residence Hall', NULL, NULL);
Insert into STAFFS (ID,Name,Gender,DOB,Address,Phone,Email,Position,Department,Dep_Phone,Office_Num) values (302, 'Kaily E.', 'F', to_date('10-MAY-1988','DD-MON-RR'), 'Wenar Melbourne 2274', '0482 373 948', 'Kaily@deakin.edu.au', 'Accommodation staff', 'Deakin Unit', NULL, NULL);
Insert into STAFFS (ID,Name,Gender,DOB,Address,Phone,Email,Position,Department,Dep_Phone,Office_Num) values (303, 'Danel D.', 'M', to_date('12-DEC-1951','DD-MON-RR'), 'Cody Melbourne 2275', '0483 373 948', 'Danel@deakin.edu.au', 'Accommodation staff', 'Dormitory', NULL, NULL);
Insert into STAFFS (ID,Name,Gender,DOB,Address,Phone,Email,Position,Department,Dep_Phone,Office_Num) values (202, 'Belleric M.', 'M', to_date('12-MAR-1971','DD-MON-RR'), 'Blue Melbourne 3371', '0479 333 948', 'Bellerict@deakin.edu.au', 'Program Director', 'IT Deparment', NULL, '8');
Insert into STAFFS (ID,Name,Gender,DOB,Address,Phone,Email,Position,Department,Dep_Phone,Office_Num) values (203, 'Kristin S.', 'F', to_date('12-MAR-1967','DD-MON-RR'), 'Rodan Melbourne 2271', '0479 373 234', 'Kristin@deakin.edu.au', 'Program Director', 'Business Department', NULL, '12');
Insert into STAFFS (ID,Name,Gender,DOB,Address,Phone,Email,Position,Department,Dep_Phone,Office_Num) values (103, 'Elda P.', 'F', to_date('21-DEC-1985','DD-MON-RR'), 'Rodan Melbourne 2271', '0478 384 342', 'Elda@deakin.edu.au', 'Adviser', 'Business Department', '2444', '5');


--Insert into PROGRAMS (6 records)
Insert into PROGRAMS (Course_Num,Title,Room_Num,Department,Director_ID) values 
(1,'Professional Career','102','Social Science Department',202);
Insert into PROGRAMS (Course_Num,Title,Room_Num,Department,Director_ID) values 
(2,'Smart Business','23','Business Department',201);
Insert into PROGRAMS (Course_Num,Title,Room_Num,Department,Director_ID) values 
(3,'Enterpreneurship','25','Business Department',203);
Insert into PROGRAMS (Course_Num,Title,Room_Num,Department,Director_ID) values 
(4,'Smart Business','203','IT Department',203);
Insert into PROGRAMS (Course_Num,Title,Room_Num,Department,Director_ID) values 
(5,'Smart Business','201','IT Department',201);
Insert into PROGRAMS (Course_Num,Title,Room_Num,Department,Director_ID) values 
(6,'Social Interaction','109','Social Science Department',202);

--Insert into HALLS (6 Records for all Residences)
Insert into HALLS (Hall_Num,Name,Address,Phone,Manager) values (1,'Diamond','Boxhill Melbourne 2273','0838 293 838', 'Paul A.');
Insert into HALLS (Hall_Num,Name,Address,Phone,Manager) values (2,'Castle','Mountainhill Melbourne 2275','0848 233 838', 'Dianel E.');
--Insert into DORMITORIES
Insert into DORMITORIES (Flat_Num,Address,Dorm_Availability) values (3,'Burwood Melbourne 2271',10);
Insert into DORMITORIES (Flat_Num,Address,Dorm_Availability) values (4,'Blackburn Melbourne 2272',6);
--Insert into DEAKIN_UNITS
Insert into DEAKIN_UNITS (Apartment_Num,Address,Bedroom_Availability) values (5,'Burwoodwest Melbourne 2231',14);
Insert into DEAKIN_UNITS (Apartment_Num,Address,Bedroom_Availability) values (6,'Burwoordeast Melbourne 2244',4);

--Insert into ROOMS (18 records)
--For HALLS
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (6,'1','n/a',50.00,1);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (2,'3','n/a',54.30,1);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (7,'7','n/a',57.1,1);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (4,'3','n/a',48.60,2);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (10,'8','n/a',54.30,2);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (1,'2','n/a',55.70,2);
--For DORMITORIES
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (9,'1','1',35.70,3);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (18,'1','2',33.40,3);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (16,'2','3',37.10,3);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (15,'4','1',38.60,4);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (3,'5','1',35.70,4);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (12,'4','2',37.10,4);
--For Deakin_Units
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (13,'2','n/a',42.90,5);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (14,'1','n/a',45.70,5);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (5,'5','n/a',42.90,5);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (11,'4','n/a',47.10,6);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (17,'3','n/a',44.30,6);
Insert into ROOMS (Place_Num,Room_Num,Bed_Num,Rent_Rate,Residence_Num) values (8,'6','n/a',51.40,6);


--Insert into students (12 records)
Insert into STUDENTS (ID,Name,Gender,DOB,Address,Nationality,Email,Mobile,Degree,School,Mentor_ID,Adviser_ID,Course_Num,Place_Num) values (1,'Marry B.','F',to_date('21-FEB-2000','DD-MON-RR'),'Round Melbourne 2262','Australian','Marry@deakin.edu.au','0478 382 837','Undergraduate','SIT',7,101,1,5);

Insert into STUDENTS (ID,Name,Gender,DOB,Address,Nationality,Email,Mobile,Degree,School,Mentor_ID,Adviser_ID,Course_Num,Place_Num) values (2,'Jack L.','M',to_date('20-FEB-2003','DD-MON-RR'),'Rock Melbourne 2263','American','Jack@deakin.edu.au','0479 382 838','Undergraduate','BUS',8,101,2,8);

Insert into STUDENTS (ID,Name,Gender,DOB,Address,Nationality,Email,Mobile,Degree,School,Mentor_ID,Adviser_ID,Course_Num,Place_Num) values (3,'Morgan K.','M',to_date('01-MAR-2001','DD-MON-RR'),'Stone Melbourne 2264','English','Morgan@deakin.edu.au','0479 382 837','Postgraduate','SIT',9,101,3,16);

Insert into STUDENTS (ID,Name,Gender,DOB,Address,Nationality,Email,Mobile,Degree,School,Mentor_ID,Adviser_ID,Course_Num,Place_Num) values (4,'Denny M.','F',to_date('10-DEC-2000','DD-MON-RR'),'Squre Melbourne 2265','Canadian','Denny@deakin.edu.au','0480 382 838','Undergraduate','SC',10,101,2,11);

Insert into STUDENTS (ID,Name,Gender,DOB,Address,Nationality,Email,Mobile,Degree,School,Mentor_ID,Adviser_ID,Course_Num,Place_Num) values (5,'Jen B.','F',to_date('21-FEB-2004','DD-MON-RR'),'Stone Melbourne 2266','Australian','Jen@deakin.edu.au','0480 382 837','Undergraduate','SIT',11,102,2,1);

Insert into STUDENTS (ID,Name,Gender,DOB,Address,Nationality,Email,Mobile,Degree,School,Mentor_ID,Adviser_ID,Course_Num,Place_Num) values (6,'Rot B.','M',to_date('30-NOV-2000','DD-MON-RR'),'Blue Melbourne 2267','English','Rot@deakin.edu.au','0481 382 838','Postgraduate','BUS',12,102,2,4);

Insert into STUDENTS (ID,Name,Gender,DOB,Address,Nationality,Email,Mobile,Degree,School,Mentor_ID,Adviser_ID,Course_Num,Place_Num) values (7,'Mike B.','M',to_date('02-SEP-1998','DD-MON-RR'),'Rodan Melbourne 2268','Australian','Mike@deakin.edu.au','0481 382 837','Undergraduate','SIT',NULL,102,1,15);

Insert into STUDENTS (ID,Name,Gender,DOB,Address,Nationality,Email,Mobile,Degree,School,Mentor_ID,Adviser_ID,Course_Num,Place_Num) values (8,'David S.','M',to_date('16-JAN-2002','DD-MON-RR'),'Black Melbourne 2269','Australian','David@deakin.edu.au','0482 382 838','Postgraduate','SC',NULL,102,1,2);

Insert into STUDENTS (ID,Name,Gender,DOB,Address,Nationality,Email,Mobile,Degree,School,Mentor_ID,Adviser_ID,Course_Num,Place_Num) values (9,'Karl B.','M',to_date('11-OCT-1999','DD-MON-RR'),'Dello Melbourne 2270','Australian','Karl@deakin.edu.au','0482 382 837','Undergraduate','SIT',NULL,103,3,10);

Insert into STUDENTS (ID,Name,Gender,DOB,Address,Nationality,Email,Mobile,Degree,School,Mentor_ID,Adviser_ID,Course_Num,Place_Num) values (10,'Mally K.','F',to_date('09-APR-2001','DD-MON-RR'),'Wenar Melbourne 2271','Australian','Mally@deakin.edu.au','0483 382 838','Undergraduate','BUS',NULL,103,3,9);

Insert into STUDENTS (ID,Name,Gender,DOB,Address,Nationality,Email,Mobile,Degree,School,Mentor_ID,Adviser_ID,Course_Num,Place_Num) values (11,'Daren P.','M',to_date('21-NOV-1997','DD-MON-RR'),'Willer Melbourne 2272','American','Deren@deakin.edu.au','0483 382 837','Postgraduate','SIT',NULL,103,3,18);

Insert into STUDENTS (ID,Name,Gender,DOB,Address,Nationality,Email,Mobile,Degree,School,Mentor_ID,Adviser_ID,Course_Num,Place_Num) values (12,'Cortney L.','F',to_date('12-FEB-1995','DD-MON-RR'),'Cody Melbourne 2273','American','Kortney@deakin.edu.au','0484 382 838','Postgraduate','SC',NULL,103,3,13);

--Insert into Q_LIST
Insert into Q_LIST (Q_Num, Current_Status,Special_Needs,Comments, Student_ID) values (1,'Placed','clean room','n/a',1);
Insert into Q_LIST (Q_Num, Current_Status,Special_Needs,Comments, Student_ID) values (2,'Placed','tidy','n/a',2);
Insert into Q_LIST (Q_Num, Current_Status,Special_Needs,Comments, Student_ID) values (3,'Placed','clean room','n/a',3);
Insert into Q_LIST (Q_Num, Current_Status,Special_Needs,Comments, Student_ID) values (4,'Placed','n/a','n/a',4);
Insert into Q_LIST (Q_Num, Current_Status,Special_Needs,Comments, Student_ID) values (5,'Waiting','none smoking','n/a',5);
Insert into Q_LIST (Q_Num, Current_Status,Special_Needs,Comments, Student_ID) values (6,'Placed','Quite','n/a',6);
Insert into Q_LIST (Q_Num, Current_Status,Special_Needs,Comments, Student_ID) values (7,'Placed','Front view','n/a',7);
Insert into Q_LIST (Q_Num, Current_Status,Special_Needs,Comments, Student_ID) values (8,'Placed','Parking needed','n/a',8);
Insert into Q_LIST (Q_Num, Current_Status,Special_Needs,Comments, Student_ID) values (9,'Placed','Cooking tools','n/a',9);
Insert into Q_LIST (Q_Num, Current_Status,Special_Needs,Comments, Student_ID) values (10,'Placed','tidy','n/a',10);
Insert into Q_LIST (Q_Num, Current_Status,Special_Needs,Comments, Student_ID) values (11,'Placed','No smell','n/a',11);
Insert into Q_LIST (Q_Num, Current_Status,Special_Needs,Comments, Student_ID) values (12,'Waiting','Full furnished','n/a',12);


-- Insert into GUARDIANS
Insert into GUARDIANS(ID, Name, Relationship, Address, Phone, Student_ID) values (1,'Bratino P.','Father','Stone Melbourne 2266','0635 293 283',2);
Insert into GUARDIANS(ID, Name, Relationship, Address, Phone, Student_ID) values (2,'Maria K.','Mother','Bride Melbourne 2233','0485 945 450',3);
Insert into GUARDIANS(ID, Name, Relationship, Address, Phone, Student_ID) values (3,'Rindo B.','Uncle','Black Melbourne 2223','0384 384 384',7);
Insert into GUARDIANS(ID, Name, Relationship, Address, Phone, Student_ID) values (4,'Ronald B.','Father','Square Melbourne 2224','0393 348 349',8);
Insert into GUARDIANS(ID, Name, Relationship, Address, Phone, Student_ID) values (5,'Daniel M.','Father','Bridge Melbourne 2233','0349 384 349',11);
Insert into GUARDIANS(ID, Name, Relationship, Address, Phone, Student_ID) values (6,'Bella L.','Mother','Stone Melbourne 2284','0494 459 594',12);

--Insert into LOGS
Insert into LOGS(Log_Num, Access_Date, User_ID) values (1, to_date('12-SEP-2020','DD-MON-RR'), 303);
Insert into LOGS(Log_Num, Access_Date, User_ID) values (2, to_date('14-SEP-2020','DD-MON-RR'), 301);
Insert into LOGS(Log_Num, Access_Date, User_ID) values (3, to_date('20-SEP-2020','DD-MON-RR'), 301);
Insert into LOGS(Log_Num, Access_Date, User_ID) values (4, to_date('1-OCT-2020','DD-MON-RR'), 2);
Insert into LOGS(Log_Num, Access_Date, User_ID) values (5, to_date('3-OCT-2020','DD-MON-RR'), 5);
Insert into LOGS(Log_Num, Access_Date, User_ID) values (6, to_date('7-OCT-2020','DD-MON-RR'), 102);

--Insert into INSPECTIONS
Insert into INSPECTIONS(Inspection_Num, Inspection_Date, Satisfaction, Comments, Staff_ID, Place_Num) values (1, to_date('10-JAN-2020','DD-MON-RR'),'Y','n/a',302,3);
Insert into INSPECTIONS(Inspection_Num, Inspection_Date, Satisfaction, Comments, Staff_ID, Place_Num) values (2, to_date('10-FEB-2020','DD-MON-RR'),'Y','All good',303,5);
Insert into INSPECTIONS(Inspection_Num, Inspection_Date, Satisfaction, Comments, Staff_ID, Place_Num) values (3, to_date('10-MAR-2020','DD-MON-RR'),'N','Holes on walls',301,6);
Insert into INSPECTIONS(Inspection_Num, Inspection_Date, Satisfaction, Comments, Staff_ID, Place_Num) values (4, to_date('10-MAY-2020','DD-MON-RR'),'Y','n/a',301,8);
Insert into INSPECTIONS(Inspection_Num, Inspection_Date, Satisfaction, Comments, Staff_ID, Place_Num) values (5, to_date('10-JUN-2020','DD-MON-RR'),'Y','No Problem',302,1);
Insert into INSPECTIONS(Inspection_Num, Inspection_Date, Satisfaction, Comments, Staff_ID, Place_Num) values (6, to_date('10-JUN-2020','DD-MON-RR'),'N','Broken furniture',303,2);


--Insert into LEASES (10 records for all students)
Insert into LEASES(Lease_Num, Duration, Start_Date, End_Date, Place_Num, Student_ID) values (1, 3, to_date('10-FEB-2020','DD-MON-RR'),to_date('10-FEB-2021','DD-MON-RR'),5,9);
Insert into LEASES(Lease_Num, Duration, Start_Date, End_Date, Place_Num, Student_ID) values (2, 3, to_date('20-FEB-2020','DD-MON-RR'),to_date('20-FEB-2021','DD-MON-RR'),4,10);
Insert into LEASES(Lease_Num, Duration, Start_Date, End_Date, Place_Num, Student_ID) values (3, 1, to_date('10-JUL-2020','DD-MON-RR'),to_date('10-Nov-2020','DD-MON-RR'),6,8);
Insert into LEASES(Lease_Num, Duration, Start_Date, End_Date, Place_Num, Student_ID) values (4, 2, to_date('10-JUL-2020','DD-MON-RR'),to_date('10-FEB-2021','DD-MON-RR'),1,2);
Insert into LEASES(Lease_Num, Duration, Start_Date, End_Date, Place_Num, Student_ID) values (5, 3, to_date('10-JUL-2020','DD-MON-RR'),to_date('10-JUL-2021','DD-MON-RR'),2,1);
Insert into LEASES(Lease_Num, Duration, Start_Date, End_Date, Place_Num, Student_ID) values (6, 3, to_date('5-MAR-2020','DD-MON-RR'),to_date('5-MAR-2021','DD-MON-RR'),3,3);
Insert into LEASES(Lease_Num, Duration, Start_Date, End_Date, Place_Num, Student_ID) values (7, 2, to_date('20-FEB-2020','DD-MON-RR'),to_date('20-NOV-2020','DD-MON-RR'),7,7);
Insert into LEASES(Lease_Num, Duration, Start_Date, End_Date, Place_Num, Student_ID) values (8, 1, to_date('2-NOV-2020','DD-MON-RR'),to_date('2-FEB-2021','DD-MON-RR'),9,6);
Insert into LEASES(Lease_Num, Duration, Start_Date, End_Date, Place_Num, Student_ID) values (9, 1, to_date('10-NOV-2020','DD-MON-RR'),to_date('10-FEB-2021','DD-MON-RR'),12,4);
Insert into LEASES(Lease_Num, Duration, Start_Date, End_Date, Place_Num, Student_ID) values (10, 2, to_date('2-NOV-2020','DD-MON-RR'),to_date('2-JUN-2021','DD-MON-RR'),10,11);


--Insert into INVOICES (6 Records)
Insert into INVOICES (Invoice_Num, Term, Due_Date, Paid_Date, Pay_Method, Lease_Num) values (1233, 'T1-2020', to_date('12-Mar-2020','DD-MON-RR'), to_date('5-Mar-2020','DD-MON-RR'), 'Visa',1);
Insert into INVOICES (Invoice_Num, Term, Due_Date, Paid_Date, Pay_Method, Lease_Num) values (1234, 'T1-2020', to_date('12-Mar-2020','DD-MON-RR'), to_date('20-Mar-2020','DD-MON-RR'), 'Check',2);
Insert into INVOICES (Invoice_Num, Term, Due_Date, Paid_Date, Pay_Method, Lease_Num) values (1235, 'T2-2020', to_date('20-JUL-2020','DD-MON-RR'), to_date('20-JUN-2020','DD-MON-RR'), 'Visa',3);
Insert into INVOICES (Invoice_Num, Term, Due_Date, Paid_Date, Pay_Method, Lease_Num) values (1236, 'T2-2020', to_date('20-Mar-2020','DD-MON-RR'), to_date('30-JUN-2020','DD-MON-RR'), 'Master',4);
Insert into INVOICES (Invoice_Num, Term, Due_Date, Paid_Date, Pay_Method, Lease_Num) values (1237, 'T2-2020', to_date('20-JUL-2020','DD-MON-RR'), to_date('30-JUL-2020','DD-MON-RR'), 'Visa',5);
Insert into INVOICES (Invoice_Num, Term, Due_Date, Paid_Date, Pay_Method, Lease_Num) values (1238, 'T1-2020', to_date('15-NOV-2020','DD-MON-RR'), NULL, 'Visa',10);


--Enable FK constrains
ALTER TABLE PROGRAMS ENABLE CONSTRAINT FK_PROGRAMS_Director_ID;
ALTER TABLE STUDENTS ENABLE CONSTRAINT FK_STUDENTS_Mentor_ID;
ALTER TABLE STUDENTS ENABLE CONSTRAINT FK_STUDENTS_Adviser_ID;
ALTER TABLE STUDENTS ENABLE CONSTRAINT FK_STUDENTS_Course_Num;
ALTER TABLE STUDENTS ENABLE CONSTRAINT FK_STUDENTS_Place_Num;
ALTER TABLE GUARDIANS ENABLE CONSTRAINT FK_GUARDIANS_Student_ID;
ALTER TABLE Q_LIST ENABLE CONSTRAINT FK_Q_LIST_Student_ID;
ALTER TABLE INSPECTIONS ENABLE CONSTRAINT FK_INSPECTIONS_Staff_ID;
ALTER TABLE INSPECTIONS ENABLE CONSTRAINT FK_INSPECTIONS_Place_Num;
ALTER TABLE LEASES ENABLE CONSTRAINT FK_LEASES_Place_Num;
ALTER TABLE LEASES ENABLE CONSTRAINT FK_LEASES_Student_ID;
ALTER TABLE INVOICES ENABLE CONSTRAINT FK_INVOICES_Lease_Num;

