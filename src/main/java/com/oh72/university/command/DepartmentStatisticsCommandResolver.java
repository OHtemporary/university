package com.oh72.university.command;

import com.oh72.university.entity.Command;
import com.oh72.university.entity.Degree;
import com.oh72.university.entity.Department;
import com.oh72.university.repository.DepartmentRepository;
import com.oh72.university.repository.LectorDepartmentRelationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

/**
 * Request:
 * Who is head of department {department_name}
 *
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
@Component
public class DepartmentStatisticsCommandResolver implements ICommandResolver {
    @Autowired
    private DepartmentRepository departmentRepository;
    @Autowired
    private LectorDepartmentRelationRepository lectorDepartmentRelationRepository;

    @Override
    public Command getCommand() {
        return Command.DEPARTMENT_STATISTICS;
    }

    @Override
    public String getResponse(List<String> requestParams, String responseTemplate) {
        String departmentName = requestParams.get(0);
        Optional<Department> department = departmentRepository.findByName(departmentName);

        // Check if department exists
        if (department.isEmpty()) {
            return "Not found Department with name: \"%s\"".formatted(departmentName);
        }

        int assistants = lectorDepartmentRelationRepository
                .findLectorsInDepartmentByDegree(department.get().getId(), Degree.ASSISTANT).size();
        int associateProfessors = lectorDepartmentRelationRepository
                .findLectorsInDepartmentByDegree(department.get().getId(), Degree.ASSOCIATE_PROFESSOR).size();
        int professors = lectorDepartmentRelationRepository
                .findLectorsInDepartmentByDegree(department.get().getId(), Degree.PROFESSOR).size();

        return responseTemplate.formatted(assistants, associateProfessors, professors);
    }
}
