-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/q5roGx
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.



--STUPID QUICKDBD EXPORT PUT ("") AROUND ALL MY TABLES AND I GET AN 
--ERROR IN THE QUIERIES IF I DON'T USE THEM, SO EXPECT TO SEE THEM A LOT
--sorry for all caps just wanted you to notice this

CREATE TABLE "Departments" (
    "dept_no" varchar(4)   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Dept_Emp" (
    "id" serial NOT NULL,
    "emp_no" int   NOT NULL,
    "dept_no" varchar(4)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NULL,
	CONSTRAINT "pk_Dept_Emp" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Dept_Manager" (
    "id" serial NOT NULL,
    "dept_no" varchar(4)   NOT NULL,
    "emp_no" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NULL,
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Employees" (
    "emp_no" int   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "gender" varchar   NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" int   NOT NULL,
    "salary" float   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Title" (
    "id" serial NOT NULL,
    "emp_no" int   NOT NULL,
    "title" varchar   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "id"
     )
);

-- THESE CAME IN FROM THE EXPORT FROM QUICKDBD BUT DON'T WORK AS EXPECTED DUE
-- TO NON-UNIQUE KEYS THAT I DID NOT NOTICE UNTIL CREATING THE TABLES
-- SO I IGNORED THEM

--ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_dept_no" FOREIGN KEY("dept_no")
--REFERENCES "Departments" ("dept_no");

--ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_dept_no" FOREIGN KEY("dept_no")
--REFERENCES "Departments" ("dept_no");

--ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "Dept_Emp" ("emp_no");

--ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "Dept_Emp" ("emp_no");

--ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "Employees" ("emp_no");

--ALTER TABLE "Title" ADD CONSTRAINT "fk_Title_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "Employees" ("emp_no");

