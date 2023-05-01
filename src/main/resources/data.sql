-- Lectors
INSERT INTO lectors (id, first_name, last_name, degree) VALUES (1, 'Test_A', 'Test_A', 'ASSISTANT');

-- Departments
INSERT INTO departments (id, name, head_id) VALUES (1, 'Test_A', 1);

-- Relations
INSERT INTO lector_department_relations (id, lector_id, department_id, salary) VALUES (1, 1, 1, 100);

-- Command Responses
INSERT INTO command_responses (id, response_template) VALUES (1, 'Head of %s department is %s');

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
