package com.lab.controller;

import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.service.LentListService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
public class LentListController {

    @Resource
    private LentListService lentListService;

    @RequestMapping("/equipment/list")
    @ResponseBody
    public EasyUIDataGridResult getItemList(Integer page, Integer rows){
        EasyUIDataGridResult result = lentListService.getLentList(page,rows);
        return result;
    }
}
