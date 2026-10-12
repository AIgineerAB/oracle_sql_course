CREATE TABLE IF NOT EXISTS employees (
    employee_id NUMBER(4) PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    field VARCHAR2(50) NOT NULL,
    monthly_salary NUMBER(8) NOT NULL
);

EXIT