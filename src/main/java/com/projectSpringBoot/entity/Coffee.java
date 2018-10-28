package com.projectSpringBoot.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Setter
@Getter
@Entity
public class Coffee {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name_coffee;

    private String additive;

    private String size;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    public Coffee(){}

    public Coffee(String name_coffee, String additive, String size) {
        this.name_coffee = name_coffee;
        this.additive = additive;
        this.size = size;
    }
}
