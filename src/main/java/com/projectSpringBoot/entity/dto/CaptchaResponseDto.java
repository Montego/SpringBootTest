package com.projectSpringBoot.entity.dto;

import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;
@Getter
@Setter
//@JsonIgnoreProperties(ignoreUnknown = true) - игнорирование неизвестных полей
@JsonIgnoreProperties(ignoreUnknown = true)
public class CaptchaResponseDto {
    private boolean success;
    //т.к. гугл передает строчку с дефисом, а java не поддерживает название таких переменных, вводим алиас
    @JsonAlias("error-codes")
    private Set<String> errorCodes;
}
