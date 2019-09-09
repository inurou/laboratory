package com.lab.protal.controller;

import com.lab.common.util.TaotaoResult;
import com.lab.pojo.NewMember;
import com.lab.service.NewMemberService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

@Controller
public class NewMemberController {

    @Resource
    private NewMemberService newMemberService;

    @RequestMapping("/join")
    @ResponseBody
    public TaotaoResult SearchDesc(HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        String name = new String(request.getParameter("name").getBytes("ISO8859-1"),"UTF-8");
        String number = new String(request.getParameter("number").getBytes("ISO8859-1"),"UTF-8");
        String email = new String(request.getParameter("email").getBytes("ISO8859-1"),"UTF-8");
        String phone = new String(request.getParameter("phone").getBytes("ISO8859-1"),"UTF-8");
        String QQ = new String(request.getParameter("QQ").getBytes("ISO8859-1"),"UTF-8");
        String subject = new String(request.getParameter("college").getBytes("ISO8859-1"),"UTF-8");
        String major = new String(request.getParameter("major").getBytes("ISO8859-1"),"UTF-8");
        String honer = new String(request.getParameter("honer").getBytes("ISO8859-1"),"UTF-8");


        NewMember member = new NewMember();
        member.setName(name);
        member.setNumber(Long.parseLong(number));
        member.setEmail(email);
        member.setPhone(phone);
        member.setQq(QQ);
        member.setSubject(subject);
        member.setMajor(major);
        member.setHoner(honer);


        TaotaoResult result = newMemberService.addNewMember(member);
        return result.ok();
    }

}
