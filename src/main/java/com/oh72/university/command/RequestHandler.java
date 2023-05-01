package com.oh72.university.command;

import com.oh72.university.entity.Command;
import com.oh72.university.entity.CommandRequest;
import com.oh72.university.entity.CommandResponse;
import com.oh72.university.repository.CommandRequestRepository;
import com.oh72.university.repository.CommandResponseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

/**
 * @author Oleh Hembarovskyi
 * @since 30/04/2023
 **/
@Component
public class RequestHandler implements IRequestHandler {
    @Autowired
    private CommandRequestRepository commandRequestRepository;
    @Autowired
    private CommandResponseRepository commandResponseRepository;
    @Autowired
    private ICommandParser commandParser;
    @Autowired
    private List<ICommandResolver> commandResolvers;

    @Override
    public String handleRequest(String request) {
        Optional<CommandRequest> commandRequest = commandRequestRepository.findAll()
                .stream()
                .filter(command -> request.matches(command.getRequestPattern()))
                .findFirst();

        if (commandRequest.isEmpty()) {
            return unknownRequest(request);
        }

        Optional<ICommandResolver> commandResolver = getCommandResolver(commandRequest.get().getCommand());

        if (commandResolver.isEmpty()) {
            return unknownRequest(request);
        }

        CommandResponse commandResponse = commandRequest.get().getResponse();

        if (null == commandResponse) {
            return unknownRequest(request);
        }

        List<String> requestParams = commandParser.parse(commandRequest.get(), request);
        String response;

        try {
            response = commandResolver.get().getResponse(requestParams, commandResponse.getResponseTemplate());
        } catch (Exception e) {
            response = "Unable to resolve the answer";
        }

        return response;
    }

    public Optional<ICommandResolver> getCommandResolver(Command command) {
        return commandResolvers
                .stream()
                .filter(resolver -> Objects.equals(resolver.getCommand(), command))
                .findFirst();
    }

    public String unknownRequest(String request) {
        return "Unknown request: \"%s\"".formatted(request);
    }
}
