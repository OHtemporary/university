package com.oh72.university.command;

import com.oh72.university.entity.CommandRequest;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
@Component
public class CommandParser implements ICommandParser {
    @Override
    public List<String> parse(CommandRequest requestTemplate, String request) {
        String searchTerm = request.substring(requestTemplate.getStartPosition(), request.length() - requestTemplate.getEndPosition());

        return List.of(searchTerm);
    }
}
