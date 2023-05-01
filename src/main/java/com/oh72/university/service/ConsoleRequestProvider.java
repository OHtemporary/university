package com.oh72.university.service;

import org.springframework.stereotype.Service;

import java.util.Scanner;

/**
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
@Service
public class ConsoleRequestProvider implements IRequestProvider {
    private final Scanner scanner;

    public ConsoleRequestProvider() {
        scanner = new Scanner(System.in);
    }

    @Override
    public String getRequest() {
        return scanner.nextLine();
    }

    @Override
    public Boolean isStopCommand(String request) {
        return request.matches("(?i)stop");
    }
}
