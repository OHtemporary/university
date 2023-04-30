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
 * @since 30/04/2023
 **/
@Table(name = "departments")
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Department {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    Long id;
    String name;
    @ManyToOne
    @JoinColumn(name = "head_id")
    Lector head;
    @OneToMany
    Set<LectorDepartmentRelation> lectors;
}

