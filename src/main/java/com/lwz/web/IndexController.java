package com.lwz.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    @GetMapping("/")
    public String index(){
//        int i = 9/0;
        return "index";
    }
    @GetMapping("/blog")
    public String blog(){

        return "anime";
    }
    @GetMapping("/ph")
    public String PH(){

        return "排行";
    }
    @GetMapping("/login")
    public String login(){

        return "admin/login";
    }
}
