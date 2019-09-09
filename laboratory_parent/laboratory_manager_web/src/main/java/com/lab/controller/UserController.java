package com.lab.controller;


import com.lab.pojo.User;
import com.lab.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * create by inu
 * mybatis整合测试类
 */
@Controller
public class UserController {


    @Autowired
    UserService userService;


    @RequestMapping("/user/{userId}")
    @ResponseBody
    public User getUserById(@PathVariable Integer userId){
        User user = userService.getUserById(userId);
        return user;
    }
}
