package br.com.aj.tecnologias.cakesapi.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TesteController {

    @GetMapping
    public String getTitle() {
        return "Java";
    }
}
