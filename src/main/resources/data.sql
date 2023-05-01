-- Lectors
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (1,'Hewe','Vignaux','PROFESSOR');
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (2,'Lucila','Winton','PROFESSOR');
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (3,'Dorelle','Phillipp','PROFESSOR');
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (4,'Giffy','Onn','ASSOCIATE_PROFESSOR');
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (5,'Shanda','Harriday','ASSOCIATE_PROFESSOR');
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (6,'Nara','Friel','ASSOCIATE_PROFESSOR');
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (7,'Jacquette','Langelaan','ASSOCIATE_PROFESSOR');
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (8,'Chrissy','Megroff','ASSISTANT');
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (9,'Nicky','Ipplett','ASSISTANT');
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (10,'Sallee','Banham','ASSISTANT');
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (11,'Hershel','Josephov','ASSISTANT');
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (12,'Keane','De Beauchemp','ASSISTANT');
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (13,'Elvina','Shepherdson','ASSISTANT');

-- Departments
INSERT INTO departments (id, name, head_id) VALUES (1,'Business Development',1);
INSERT INTO departments (id, name, head_id) VALUES (2,'Engineering',2);
INSERT INTO departments (id, name, head_id) VALUES (3,'Sales',3);

-- Relations
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (1, 1, 1, 100);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (2, 2, 2, 200);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (3, 3, 3, 350);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (4, 4, 1, 50);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (5, 5, 2, 60);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (6, 6, 3, 70);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (7, 7, 1, 10);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (8, 8, 2, 200);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (9, 9, 3, 500);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (10, 10, 1, 200);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (11, 11, 2, 70);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (12, 12, 3, 80);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (13, 13, 1, 120);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (14, 1, 2, 330);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (15, 5, 3, 40);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (16, 9, 1, 10);
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (17, 9, 2, 65);

-- Command Responses
INSERT INTO command_responses (id, response_template) VALUES (1, 'Head of %s department is %s');
INSERT INTO command_responses (id, response_template) VALUES (2, 'Assistans - %d.%nAssociate professors - %d.%nProfessors - %d.');
INSERT INTO command_responses (id, response_template) VALUES (3, 'The average salary of %s is %.2f.');
INSERT INTO command_responses (id, response_template) VALUES (4, '%d');
INSERT INTO command_responses (id, response_template) VALUES (5, '%s');

-- Command Requests
    -- HEAD_OF_DEPARTMENT
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (1, 'HEAD_OF_DEPARTMENT', 'EN', '^Who is head of department [a-zA-Z0-9_.-]*\?$', 26, 1, 1);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (2, 'HEAD_OF_DEPARTMENT', 'EN', '^who is head of department [a-zA-Z0-9_.-]*\?$', 26, 1, 1);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (3, 'HEAD_OF_DEPARTMENT', 'EN', '^Who is head of department [a-zA-Z0-9_.-]*$', 26, 0, 1);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (4, 'HEAD_OF_DEPARTMENT', 'EN', '^who is head of department [a-zA-Z0-9_.-]*$', 26, 0, 1);
    -- DEPARTMENT_STATISTICS
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (5, 'DEPARTMENT_STATISTICS', 'EN', '^Show [a-zA-Z0-9_.-]* statistics\.$', 5, 12, 2);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (6, 'DEPARTMENT_STATISTICS', 'EN', '^show [a-zA-Z0-9_.-]* statistics\.$', 5, 12, 2);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (7, 'DEPARTMENT_STATISTICS', 'EN', '^Show [a-zA-Z0-9_.-]* statistics$', 5, 11, 2);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (8, 'DEPARTMENT_STATISTICS', 'EN', '^show [a-zA-Z0-9_.-]* statistics$', 5, 11, 2);
    -- AVERAGE_SALARY_OF_DEPARTMENT
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (9, 'AVERAGE_SALARY_OF_DEPARTMENT', 'EN', '^Show the average salary for the department [a-zA-Z0-9_.-]*\.$', 43, 1, 3);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (10, 'AVERAGE_SALARY_OF_DEPARTMENT', 'EN', '^show the average salary for the department [a-zA-Z0-9_.-]*\.$', 43, 1, 3);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (11, 'AVERAGE_SALARY_OF_DEPARTMENT', 'EN', '^Show the average salary for the department [a-zA-Z0-9_.-]*$', 43, 0, 3);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (12, 'AVERAGE_SALARY_OF_DEPARTMENT', 'EN', '^show the average salary for the department [a-zA-Z0-9_.-]*$', 43, 0, 3);
    -- COUNT_EMPLOYEE_OF_DEPARTMENT
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (13, 'COUNT_EMPLOYEE_OF_DEPARTMENT', 'EN', '^Show count of employee for [a-zA-Z0-9_.-]*\.$', 27, 1, 4);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (14, 'COUNT_EMPLOYEE_OF_DEPARTMENT', 'EN', '^show count of employee for [a-zA-Z0-9_.-]*\.$', 27, 1, 4);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (15, 'COUNT_EMPLOYEE_OF_DEPARTMENT', 'EN', '^Show count of employee for [a-zA-Z0-9_.-]*$', 27, 0, 4);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (16, 'COUNT_EMPLOYEE_OF_DEPARTMENT', 'EN', '^show count of employee for [a-zA-Z0-9_.-]*$', 27, 0, 4);
    -- GLOBAL_SEARCH_EMPLOYEE
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (17, 'GLOBAL_SEARCH_EMPLOYEE', 'EN', '^Global search by [a-zA-Z0-9_.-]*\.$', 17, 1, 5);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (18, 'GLOBAL_SEARCH_EMPLOYEE', 'EN', '^global search by [a-zA-Z0-9_.-]*\.$', 17, 1, 5);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (19, 'GLOBAL_SEARCH_EMPLOYEE', 'EN', '^Global search by [a-zA-Z0-9_.-]*$', 17, 0, 5);
INSERT INTO command_requests (id, command, locale, request_pattern, start_position, end_position, response_id)
VALUES (20, 'GLOBAL_SEARCH_EMPLOYEE', 'EN', '^global search by [a-zA-Z0-9_.-]*$', 17, 0, 5);