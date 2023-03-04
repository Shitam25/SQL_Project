CREATE database BMS_DB;
use BMS_DB;

-- Customer_Peronal_Info

show databases;

CREATE table Customer_Personal_Info 
(Customer_ID VARCHAR(5), 
 Customer_Name VARCHAR(30),
 Date_Of_Birth DATE,
 Guardian_Name VARCHAR(30),
 Address VARCHAR(50),
 Contact_No BIGINT(10),
 Mail_ID VARCHAR(30),
 Gender CHAR(1),
 Martial_Status VARCHAR(10),
 Identification_Doc_Type VARCHAR(20),
 ID_Doc_No VARCHAR(20),
 Citizenship VARCHAR(10),
 CONSTRAINT Cust_Pers_Info_PK PRIMARY KEY(Customer_ID)
); 

SHOW TABLES;

-- CUSTOMER_REFERENCE_INFO

CREATE table Customer_Reference_Info
(Customer_ID VARCHAR(5),
 Reference_Acc_Name VARCHAR(20),
 Reference_Acc_No BIGINT(16),
 Relation VARCHAR(25),
 CONSTRAINT Cust_Ref_Info_PK PRIMARY KEY(Customer_ID),
 CONSTRAINT Cust_Ref_Info_PK FOREIGN KEY(Customer_ID) REFERENCES
 Customer_Personal_Info(Customer_ID)
); 

-- BANK INFORMATION

CREATE table Bank_Info
(IFSC_CODE VARCHAR(15),
 Bank_Name VARCHAR(15),
 Branch_Name VARCHAR(25),
 CONSTRAINT Bank_Info_PK PRIMARY KEY(IFSC_CODE)
); 

-- ACCOUNT INFORMATION

CREATE table ACC_INFO
(ACCOUNT_NO BIGINT(16),
 CUSTOMER_ID VARCHAR(5),
 ACCOUNT_TYPE VARCHAR(10),
 REGISTRATION_DATE DATE,
 ACTIVATION_DATE DATE,
 IFSC_CODE VARCHAR(10),
 INTEREST DECIMAL(7,2),
 INITIAL_DEPOSIT BIGINT(10),
 CONSTRAINT ACC_INFO_PK PRIMARY KEY(ACCOUNT_NO),
 CONSTRAINT ACC_INFO_PERS_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES
 Customer_Personal_Info(Customer_ID),
 CONSTRAINT ACC_INFO_BANK_FK FOREIGN KEY(IFSC_CODE) REFERENCES 
 Bank_Info(IFSC_CODE)
); 

SHOW tables;

-- INSERT_INFORMATION_in_BANK_INFO

INSERT INTO BANK_INFO(IFSC_CODE, Bank_Name, Branch_Name) VALUES('HDFC00123456', 'HDFC', 'Industrial_Estate');
INSERT INTO BANK_INFO(IFSC_CODE, Bank_Name, Branch_Name) VALUES('SBITN0032485', 'SBI', 'Naka');
INSERT INTO BANK_INFO(IFSC_CODE, Bank_Name, Branch_Name) VALUES('ICITN0096843','ICICI','Indian');
INSERT INTO BANK_INFO(IFSC_CODE, Bank_Name, Branch_Name) VALUES('SBISD0098765','SBI','Wadala');

SELECT * FROM bank_info;

-- INSERT_INFORMATION_Customer_Personal_Info 

INSERT INTO Customer_Personal_Info(Customer_ID, Customer_Name, Date_Of_Birth,Guardian_Name, Address,
Contact_no,Mail_ID,Gender,Martial_Status,Identification_Doc_Type,ID_Doc_No,Citizenship)
VALUES('C-001','JOHN','1984-05-03','PETER','N0.14,ST MARKS ROAD,BANGLORE',9734526719,'JOHN_123@gmail.com',
'M','MARRIED','DRIVERS LICENSE',4235,'INDIAN');
INSERT INTO Customer_Personal_Info(Customer_ID, Customer_Name, Date_Of_Birth,Guardian_Name, Address,
Contact_no,Mail_ID,Gender,Martial_Status,Identification_Doc_Type,ID_Doc_No,Citizenship)
VALUES('C-002','James','1989-03-07','GEORGE','N0.18,MG ROAD,BANGLORE',9237093401,'JAMES_123@gmail.com',
'M','MARRIED','PASSPORT',8955,'INDIAN');
INSERT INTO Customer_Personal_Info(Customer_ID, Customer_Name, Date_Of_Birth,Guardian_Name, Address,
Contact_no,Mail_ID,Gender,Martial_Status,Identification_Doc_Type,ID_Doc_No,Citizenship)
VALUES('C-003','SUNITA','1991-11-06','VINOD','N0.21,GM ROAD,CHENNAI',9438978389,'SUNITA_123@gmail.com',
'F','MARRIED','ADHAAR CARD',5674,'INDIAN');
INSERT INTO Customer_Personal_Info(Customer_ID, Customer_Name, Date_Of_Birth,Guardian_Name, Address,
Contact_no,Mail_ID,Gender,Martial_Status,Identification_Doc_Type,ID_Doc_No,Citizenship)
VALUES('C-004','RAM','1987-11-12','KRISHNA','N0.14,LB ROAD,BANGLORE',97235234534,'RAM_123@gmail.com',
'M','UNMARRIED','DRIVERS LICENSE',2195,'INDIAN');

SELECT * FROM Customer_Personal_Info;






 
 