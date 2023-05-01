package com.oh72.university.repository;

import com.oh72.university.entity.Department;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
public interface DepartmentRepository extends JpaRepository<Department, String> {
}
