package com.projectSpringBoot.controller;

import com.projectSpringBoot.entity.User;
import org.springframework.core.io.ClassPathResource;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class CoffeeController {
    @GetMapping("/user-coffees/{author}")
    public String greeting_Coffee(@AuthenticationPrincipal User currentUser,
                                  @PathVariable User author,
                                  Model model) {
        ClassPathResource imgFile = new ClassPathResource("img/**");
        model.addAttribute("userName", author.getUsername());
        model.addAttribute(imgFile);
        return "coffee";
    }

}
