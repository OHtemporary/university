package com.oh72.university.command;

import com.oh72.university.entity.CommandRequest;

import java.util.List;

/**
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
public interface ICommandParser {
    List<String> parse(CommandRequest requestTemplate, String request);
}
