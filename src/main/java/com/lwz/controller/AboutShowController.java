package com.lwz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutShowController {

    //登录注销
    @GetMapping("/about")
    public String about(){
        return "about";
    }
}
