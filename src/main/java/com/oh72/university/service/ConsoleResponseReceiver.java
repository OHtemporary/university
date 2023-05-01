package com.oh72.university.service;

import org.springframework.stereotype.Service;

/**
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
@Service
public class ConsoleResponseReceiver implements IResponseReceiver {
    @Override
    public void sendResponse(String response) {
        System.out.println(response);
    }
}
