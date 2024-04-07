CREATE TABLE "Department" (
    "dept_no" VARCHAR(10) NOT NULL,
    "dept_name" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY ("dept_no")
);

CREATE TABLE "Employees" (
    "emp_no" int NOT NULL,
    "emp_title_id" VARCHAR(10) NOT NULL,
    "birth_date" date NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "sex" CHAR(1) NOT NULL,
    "hire_date" date NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY ("emp_no")
);

CREATE TABLE "Dept_Emp" (
    "emp_no" int NOT NULL,
    "dept_no" VARCHAR(10) NOT NULL,
    CONSTRAINT "fk_Dept_Emp_Employees" FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no"),
    CONSTRAINT "fk_Dept_Emp_Department" FOREIGN KEY ("dept_no") REFERENCES "Department" ("dept_no")
);

CREATE TABLE "Dept_Manager" (
    "emp_no" int NOT NULL,
    "dept_no" VARCHAR(10) NOT NULL,
    CONSTRAINT "fk_Dept_Manager_Employees" FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no"),
    CONSTRAINT "fk_Dept_Manager_Department" FOREIGN KEY ("dept_no") REFERENCES "Department" ("dept_no")
);



CREATE TABLE "Salaries" (
    "emp_no" int NOT NULL,
    "salary" int NOT NULL,
    CONSTRAINT "fk_Salaries_Employees" FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no")
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR(10) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY ("title_id")
);


