package com.lab.controller;

import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.common.util.TaotaoResult;
import com.lab.pojo.EquipmentList;
import com.lab.pojo.LabItem;
import com.lab.service.LabItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * create by inu
 * 实验室器材管理信息查询
 */

@Controller
public class LabItemController {

    @Resource
    private LabItemService labItemService;


    @RequestMapping("/item/list")
    @ResponseBody
    public EasyUIDataGridResult getItemList(Integer page,Integer rows){
        EasyUIDataGridResult result = labItemService.getItemList(page,rows);

        return result;
    }

    @RequestMapping("/item/save")
    @ResponseBody
    public TaotaoResult addEquipment(EquipmentList item,String desc){
        TaotaoResult result = labItemService.addItem(item,desc);
        return result;
    }
}
