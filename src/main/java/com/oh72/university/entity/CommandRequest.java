package com.oh72.university.entity;

import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

/**
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
@Table(name = "command_requests")
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CommandRequest {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    Long id;
    @Enumerated(EnumType.STRING)
    Command command;
    @Enumerated(EnumType.STRING)
    Locale locale;
    String requestPattern;
    Integer startPosition;
    Integer endPosition;
    @ManyToOne
    @JoinColumn(name = "response_id")
    CommandResponse response;
}
