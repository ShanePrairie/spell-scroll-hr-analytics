-- PostgreSQL Schema Setup for Spell & Scroll Solutions HR Database

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    email VARCHAR(100),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_title VARCHAR(100),
    department VARCHAR(100),
    manager_id INT,
    blood_status VARCHAR(30),
    wand_core VARCHAR(50),
    magical_rank VARCHAR(50),
    is_active BOOLEAN,
    salary_galleons INT,
    performance_score INT,
    spell_efficiency INT,
    charm_accuracy INT,
    years_of_experience INT,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

CREATE TABLE training_certifications (
    certification_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(employee_id),
    cert_name VARCHAR(100),
    cert_level VARCHAR(20),
    issue_date DATE,
    expiry_date DATE,
    status VARCHAR(20)
);

CREATE TABLE magical_work_survey (
    survey_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(employee_id),
    survey_date DATE,
    overall_satisfaction VARCHAR(30),
    job_spell_alignment VARCHAR(30),
    magical_involvement VARCHAR(30),
    team_relationships VARCHAR(30),
    management_trust_level VARCHAR(30),
    comment TEXT
);

CREATE TABLE exit_interviews (
    exit_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(employee_id),
    exit_date DATE,
    reason_for_leaving VARCHAR(100),
    would_recommend_company VARCHAR(50),
    final_comments TEXT
);

CREATE TABLE promotions (
    promotion_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(employee_id),
    promotion_date DATE,
    previous_title VARCHAR(100),
    new_title VARCHAR(100),
    notes TEXT
);

