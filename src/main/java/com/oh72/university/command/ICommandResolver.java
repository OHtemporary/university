package com.oh72.university.command;

import com.oh72.university.entity.Command;
import com.oh72.university.entity.CommandRequest;

/**
 * @author Oleh Hembarovskyi
 * @since 30/04/2023
 **/
public interface ICommandResolver {
    Command getCommand();

    String getResponse(CommandRequest requestTemplate, String request, String responseTemplate);
}
