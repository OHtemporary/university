package com.oh72.university.repository;

import com.oh72.university.entity.CommandResponse;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
public interface CommandResponseRepository extends JpaRepository<CommandResponse, String> {
}
