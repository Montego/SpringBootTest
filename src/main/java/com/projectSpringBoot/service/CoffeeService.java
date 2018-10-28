package com.projectSpringBoot.service;

import com.projectSpringBoot.repository.CoffeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CoffeeService {

    private final CoffeeRepository coffeeRepository;

    @Autowired
    public CoffeeService(CoffeeRepository coffeeRepository){
        this.coffeeRepository = coffeeRepository;
    }



}
