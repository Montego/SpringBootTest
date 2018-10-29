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

    private String name;

    private String additive;

    private String size;

    private String description;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    public Coffee(){}

    public Coffee(String name, String additive, String size) {
        this.name = name;
        this.additive = additive;
        this.size = size;
    }
}
