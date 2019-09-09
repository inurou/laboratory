package com.lab.controller;

import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.service.NewMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
public class NewMemberController {

    @Resource
    private NewMemberService newMemberService;


    @RequestMapping("/newmember/list")
    @ResponseBody
    public EasyUIDataGridResult getItemList(Integer page, Integer rows){
        EasyUIDataGridResult result = newMemberService.getNewMemberList(page,rows);
        return result;
    }
}
