package com.oh72.university.command;

import com.oh72.university.entity.Command;

import java.util.List;

/**
 * @author Oleh Hembarovskyi
 * @since 30/04/2023
 **/
public interface ICommandResolver {
    Command getCommand();

    String getResponse(List<String> requestParams, String responseTemplate);
}
