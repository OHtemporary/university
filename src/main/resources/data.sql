-- Lectors
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (1, 'Test_A', 'Test_A', 'ASSISTANT');

-- Departments
INSERT INTO departments (id, name, head_id) VALUES (1, 'Test_A', 1);

-- Relations
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (1, 1, 1, 100);

-- Command Responses
INSERT INTO command_responses (id, response_template) VALUES (1, 'Head of %s department is %s');
INSERT INTO command_responses (id, response_template) VALUES (2, 'Assistans - %d.%nAssociate professors - %d.%nProfessors - %d.');
INSERT INTO command_responses (id, response_template) VALUES (3, 'The average salary of %s is %.2f.');
INSERT INTO command_responses (id, response_template) VALUES (4, '%d');

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