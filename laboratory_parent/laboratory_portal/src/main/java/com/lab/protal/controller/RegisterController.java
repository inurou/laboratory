package com.lab.protal.controller;

import com.lab.common.util.TaotaoResult;
import com.lab.pojo.UserList;
import com.lab.service.RegisterService;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;

@Controller
public class RegisterController {

    @Resource
    private RegisterService registerService;

    @RequestMapping("/register")
    @ResponseBody
    public TaotaoResult registerUser(HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        String name = new String(request.getParameter("username").getBytes("ISO8859-1"),"UTF-8");
        String number = new String(request.getParameter("number").getBytes("ISO8859-1"),"UTF-8");
        String password = new String(request.getParameter("password").getBytes("ISO8859-1"),"UTF-8");
        String email = new String(request.getParameter("email").getBytes("ISO8859-1"),"UTF-8");
        String phone = new String(request.getParameter("phone").getBytes("ISO8859-1"),"UTF-8");

        UserList userList = new UserList();
        userList.setName(name);
        userList.setNumber(Long.parseLong(number));
        //对用户密码进行md5加密
        userList.setPassword(DigestUtils.md5DigestAsHex(password.getBytes()));
        userList.setEmail(email);
        userList.setPhone(Long.parseLong(phone));



        TaotaoResult result = registerService.addNewUser(userList);
        return result;
    }

    @RequestMapping("/userlogin")
    @ResponseBody
    public TaotaoResult loginUser(HttpServletRequest request, HttpSession session) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        String number = new String(request.getParameter("number").getBytes("ISO8859-1"),"UTF-8");
        String password = new String(request.getParameter("password").getBytes("ISO8859-1"),"UTF-8");

        long num = Long.parseLong(number);

        
        TaotaoResult login = registerService.login(num,password);
        return login;
    }

    @RequestMapping("/resetpass")
    @ResponseBody
    public TaotaoResult resetPass(HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        String number = new String(request.getParameter("number").getBytes("ISO8859-1"),"UTF-8");
        String password = new String(request.getParameter("password").getBytes("ISO8859-1"),"UTF-8");

        long num = Long.parseLong(number);

        TaotaoResult result = registerService.resetPass(num, password);
        return result;
    }

    @RequestMapping("/userInfo")
    @ResponseBody
    public TaotaoResult userInfo(HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        String token = new String(request.getParameter("token").getBytes("ISO8859-1"),"UTF-8");

        TaotaoResult userByToken = registerService.getUserByToken(token);
        return userByToken;
    }

}
