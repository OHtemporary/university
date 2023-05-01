package com.oh72.university.command;

import com.oh72.university.entity.Command;
import com.oh72.university.entity.Lector;
import com.oh72.university.repository.LectorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Request:
 * Global search by {template}.
 *
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
@Component
public class GlobalSearchEmployeeCommandResolver implements ICommandResolver {
    @Autowired
    private LectorRepository lectorRepository;

    @Override
    public Command getCommand() {
        return Command.GLOBAL_SEARCH_EMPLOYEE;
    }

    @Override
    public String getResponse(List<String> requestParams, String responseTemplate) {
        String searchTerm = requestParams.get(0);
        List<Lector> lectors = lectorRepository.searchByName(searchTerm);
        String result = lectors
                .stream()
                .map(Lector::getName)
                .collect(Collectors.joining());

        if (result.isEmpty()) {
            result = "No lector found";
        }

        return responseTemplate.formatted(result);
    }
}
