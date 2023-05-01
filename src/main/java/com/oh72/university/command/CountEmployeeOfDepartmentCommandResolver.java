package com.oh72.university.command;

import com.oh72.university.entity.Command;
import com.oh72.university.entity.Department;
import com.oh72.university.repository.DepartmentRepository;
import com.oh72.university.repository.LectorDepartmentRelationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

/**
 * Request:
 * Show count of employee for {department_name}.
 *
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
@Component
public class CountEmployeeOfDepartmentCommandResolver implements ICommandResolver {
    @Autowired
    private DepartmentRepository departmentRepository;
    @Autowired
    private LectorDepartmentRelationRepository lectorDepartmentRelationRepository;

    @Override
    public Command getCommand() {
        return Command.COUNT_EMPLOYEE_OF_DEPARTMENT;
    }

    @Override
    public String getResponse(List<String> requestParams, String responseTemplate) {
        String departmentName = requestParams.get(0);
        Optional<Department> department = departmentRepository.findByName(departmentName);

        // Check if department exists
        if (department.isEmpty()) {
            return "Not found Department with name: \"%s\"".formatted(departmentName);
        }

        int countEmployees = lectorDepartmentRelationRepository
                .findByDepartmentId(department.get().getId()).size();

        return responseTemplate.formatted(countEmployees);
    }
}
