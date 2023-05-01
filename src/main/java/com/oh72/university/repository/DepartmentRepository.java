package com.oh72.university.repository;

import com.oh72.university.entity.Department;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

/**
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
public interface DepartmentRepository extends JpaRepository<Department, String> {
    Optional<Department> findByName(String name);
}
