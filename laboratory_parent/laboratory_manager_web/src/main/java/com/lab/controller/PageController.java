package com.lab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * create by inu
 * EasyUI 后台页面管理
 */
@Controller
public class PageController {

    @RequestMapping("/")
    public String showIndex(){
        return "index";
    }


    @RequestMapping("/{page}")
    public String showPage(@PathVariable String page){
        return page;
    }
}
