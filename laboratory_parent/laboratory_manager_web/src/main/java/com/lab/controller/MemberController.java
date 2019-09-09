package com.lab.controller;

import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.common.util.TaotaoResult;
import com.lab.pojo.Member;
import com.lab.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * create by inu
 * 实验室成员信息查询
 */
@Controller
public class MemberController {

    @Resource
    private MemberService memberService;


    @RequestMapping("/member/list")
    @ResponseBody
    public EasyUIDataGridResult getItemList(Integer page, Integer rows){
        EasyUIDataGridResult result = memberService.getMemberList(page,rows);

        return result;
    }

    @RequestMapping("/member/save")
    @ResponseBody
    public TaotaoResult addEquipment(Member member){
        TaotaoResult result = memberService.addMember(member);
        return result;
    }

}
