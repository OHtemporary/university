-- Lectors
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (1, 'Test_A', 'Test_A', 'ASSISTANT');

-- Departments
INSERT INTO departments (id, name, head_id) VALUES (1, 'Test_A', 1);

-- Relations
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (1, 1, 1, 100);
