create table employee(
emp_id number(4)primary key,
emp_name VARCHAR2(50)not NULL,
emp_age number(3)not NULL,
emp_position VARCHAR2(20)not NULL,
emp_gender varchar2(20)not NULL,
CHECK(emp_age>18 and emp_gender='male')
);
insert into employee VALUES(1001,'Arish',22,'HR','male');
insert into employee VALUES(1002,'Arun',33,'TL','male');
insert into employee VALUES(1003,'Ezhil',27,'develpoer','male');
insert into employee VALUES(1004,'basha',24,'python','male');
insert into employee VALUES(1005,'bala',30,'java','male');

------

create table patient(
patient_id number(4)primary key,
patient_name VARCHAR2(50)not NULL,
patient_age number(3)not NULL,
patient_address VARCHAR2(50)not NULL,
patient_gender varchar2(20)not NULL,
CHECK (patient_age>18 and patient_gender='male')
);
insert into patient VALUES(2001,'ria',22,'rajaji street','male');
insert into  patient VALUES(2002,'Arun',33,'nehru street','male');
insert into  patient VALUES(2003,'Ezhil',27,'sarkar thoppu','male');
insert into  patient VALUES(2004,'basha',24,'pondy street','male');
insert into  patient VALUES(2005,'bala',30,'jeeeva street','male');

------
CREATE TABLE Expense_details (
    ExpenseID NUMBER(4) PRIMARY KEY,
    ExpenseType VARCHAR(50) NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL CHECK (Amount > 0),
    ExpenseDate DATE NOT NULL
);

INSERT into expense_details VALUES(22,'travel',200.10,to_date('2024-08-10','yyyy-mm-dd'));
INSERT into expense_details VALUES(23,'travel',2200.10,to_date('2024-11-9','yyyy-mm-dd'));

--
create table billing(
    billing_id number(4)  not NULL,
    patient_id number(4) NOT NULL,
    invoice_number VARCHAR2(50) NOT NULL,
    billing_date DATE NOT NULL
);
insert into  billing VALUES(1022,2001,30222,'12-8-24');
insert into  billing VALUES(1023,2002,30223,'15-5-24');
insert into  billing VALUES(1024,2003,30224,'02-6-24');
insert into  billing VALUES(1025,2004,30225,'18-9-24');
insert into  billing VALUES(1026,2005,30226,'23-8-24');
----
CREATE TABLE Stock_details (
    StockID number(4) PRIMARY KEY,
    ItemName VARCHAR2(100) NOT NULL,
    Quantity number(2) NOT NULL CHECK (Quantity >= 0),
    ExpiryDate DATE
);
insert into  stock_details VALUES(3000,'pain_killer',1,'12-8-24');
insert into  stock_details VALUES(3100,'cold_medicine',3,'22-5-24');
insert into  stock_details VALUES(3111,'fever_set',4,'26-2-2024');
insert into  stock_details VALUES(3233,'core_tab',5,'31-3-2024');
insert into  stock_details VALUES(3333,'ausu',6,'22-7-2024');
--------
CREATE TABLE leave_info (
    LeaveID number(4) PRIMARY KEY ,
    Emp_ID NUMBER(4),
    LeaveStartDate DATE NOT NULL,
    LeaveEndDate DATE NOT NULL,
    LeaveType VARCHAR(50) NOT NULL,
    FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID),
    CHECK (LeaveStartDate <= LeaveEndDate)
);
insert into leave_info VALUES(4321,1001,'6-7-2024','21-7-2024','fever');
insert into leave_info VALUES(4322,1002,'5-8-2024','21-8-2024','marriage');
insert into leave_info VALUES(4323,1003,'15-9-2024','25-9-2024','sister marriage');
-----
CREATE TABLE payroll_info (
    Payroll_ID NUMBER(4) PRIMARY KEY ,
    Emp_ID number(4),
    PayDate DATE NOT NULL,
    BasicSalary DECIMAL(10, 2) NOT NULL CHECK (BasicSalary > 0),
    Allowances DECIMAL(10, 2) DEFAULT 0,
    Deductions DECIMAL(10, 2) DEFAULT 0,
    FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID),
    CHECK (BasicSalary + Allowances - Deductions >= 0)
);
insert into payroll_info VALUES(11,1001,'6/10/2024',2000.00,500,100.00);
insert into payroll_info VALUES(12,1002,'21/11/2024',22000.00,200,500.00);
insert into payroll_info VALUES(13,1003,'8/12/2024',35000.00,1100,300.00);
insert into payroll_info VALUES(14,1004,'6/12/2024',4540.0,500,100.00);
insert into payroll_info VALUES(15,1005,'9/1/2024',2000.00,120,100);



