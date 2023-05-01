package com.oh72.university.configuration;

import com.oh72.university.command.IRequestHandler;
import com.oh72.university.service.IRequestProvider;
import com.oh72.university.service.IResponseReceiver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

/**
 * @author Oleh Hembarovskyi
 * @since 30/04/2023
 **/
@Component
public class Runner implements CommandLineRunner {
    @Autowired
    private IRequestProvider requestProvider;
    @Autowired
    private IResponseReceiver responseReceiver;
    @Autowired
    private IRequestHandler requestHandler;

    @Override
    public void run(String... args) throws Exception {
        while (true) {
            String request = requestProvider.getRequest();

            if (requestProvider.isStopCommand(request)) {
                break;
            }

            String response = requestHandler.handleRequest(request);
            responseReceiver.sendResponse(response);
        }
    }
}
