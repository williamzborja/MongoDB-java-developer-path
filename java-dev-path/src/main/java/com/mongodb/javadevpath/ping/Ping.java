package com.mongodb.javadevpath.ping;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/ping")
@RestController
public class Ping {

    @GetMapping
    public String ping(){
        return "pong";
    }
}
