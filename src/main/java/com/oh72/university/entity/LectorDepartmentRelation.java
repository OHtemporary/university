package com.oh72.university.entity;

import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

/**
 * @author Oleh Hembarovskyi
 * @since 30/04/2023
 **/
@Table(name = "lectorDepartmentRelations")
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class LectorDepartmentRelation {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    Long id;
    @ManyToOne
    @JoinColumn(name = "lectorId")
    Lector lector;
    @ManyToOne
    @JoinColumn(name = "departmentId")
    Department department;
    Double salary;
}
