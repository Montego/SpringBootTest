package com.projectSpringBoot.entity.dto;

import com.projectSpringBoot.entity.Coffee;
import com.projectSpringBoot.entity.User;
import lombok.Getter;

@Getter
public class CoffeeDto {
    private Long id;

    private String name;

    private String additive;

    private String size;


    public CoffeeDto(Coffee coffee) {
        this.id = coffee.getId();
        this.name = coffee.getName();
        this.additive = coffee.getAdditive();
        this.size = coffee.getSize();

    }
}
