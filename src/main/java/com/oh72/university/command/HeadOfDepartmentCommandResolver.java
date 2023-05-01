package com.oh72.university.command;

import com.oh72.university.entity.Command;
import com.oh72.university.entity.CommandRequest;
import com.oh72.university.entity.Department;
import com.oh72.university.entity.Lector;
import com.oh72.university.repository.DepartmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Optional;

/**
 * Request:
 * Who is head of department {department_name}
 *
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
@Component
public class HeadOfDepartmentCommandResolver implements ICommandResolver {
    @Autowired
    private DepartmentRepository departmentRepository;

    @Override
    public Command getCommand() {
        return Command.HEAD_OF_DEPARTMENT;
    }

    @Override
    public String getResponse(CommandRequest requestTemplate, String request, String responseTemplate) {
        String departmentName = request.substring(requestTemplate.getStartPosition(), requestTemplate.getEndPosition());
        Optional<Department> department = departmentRepository.findByName(departmentName);

        if (department.isEmpty()) {
            return "Not found Department with name: \"%s\"".formatted(departmentName);
        }

        String headName = Optional.ofNullable(department.get().getHead())
                .map(Lector::getName)
                .orElse(null);

        if (null == headName) {
            return "The department has no head";
        }

        return responseTemplate.formatted(departmentName, headName);
    }
}
