package com.oh72.university.entity;

import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

import java.util.Set;

/**
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
@Table(name = "command_responses")
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CommandResponse {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    Long id;
    String responseTemplate;
    @OneToMany(mappedBy = "response")
    Set<CommandRequest> requests;
}
