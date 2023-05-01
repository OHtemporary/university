package com.oh72.university.repository;

import com.oh72.university.entity.Degree;
import com.oh72.university.entity.LectorDepartmentRelation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
public interface LectorDepartmentRelationRepository extends JpaRepository<LectorDepartmentRelation, String> {
    @Query(value = "SELECT relation FROM LectorDepartmentRelation AS relation " +
            "WHERE relation.lector.degree = :degree " +
            "AND relation.department.id = :departmentId")
    List<LectorDepartmentRelation> findLectorsInDepartmentByDegree(Long departmentId, Degree degree);
}
