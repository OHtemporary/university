package com.oh72.university.repository;

import com.oh72.university.entity.LectorDepartmentRelation;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
public interface LectorDepartmentRelationRepository extends JpaRepository<LectorDepartmentRelation, String> {
}
