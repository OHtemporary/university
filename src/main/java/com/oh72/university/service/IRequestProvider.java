package com.oh72.university.service;

/**
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
public interface IRequestProvider {
    String getRequest();

    Boolean isStopCommand(String request);
}
