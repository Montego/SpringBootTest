package com.projectSpringBoot.repository;

import com.projectSpringBoot.entity.Coffee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CoffeeRepository extends JpaRepository<Coffee,Long> {

}
