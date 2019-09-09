package com.lab.protal.controller;

import com.lab.common.util.JsonUtils;
import com.lab.pojo.EquipmentList;
import com.lab.service.LabItemService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class EquipmentController {

    @Resource
    private LabItemService labItemService;

    @RequestMapping("/lent")
    @ResponseBody
    public List<EquipmentList> lent(){
        List<EquipmentList> list = labItemService.getEquimentAllList();
        return list;
    }
}
