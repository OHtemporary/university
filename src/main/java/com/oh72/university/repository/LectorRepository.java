package com.oh72.university.repository;

import com.oh72.university.entity.Lector;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author Oleh Hembarovskyi
 * @since 01/05/2023
 **/
public interface LectorRepository extends JpaRepository<Lector, String> {
    @Query("SELECT lector FROM Lector lector WHERE CONCAT(firstName, lastName) LIKE %:searchTerm%")
    List<Lector> searchByName(String searchTerm);
}
