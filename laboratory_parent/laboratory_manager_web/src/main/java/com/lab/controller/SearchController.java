package com.lab.controller;


import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.common.util.TaotaoResult;
import com.lab.pojo.Search;
import com.lab.service.SearchService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * create by inu
 * 实验室研究项目信息查询
 */
@Controller
public class SearchController {

    @Resource
    private SearchService searchService;

    @RequestMapping("/search/list")
    @ResponseBody
    public EasyUIDataGridResult getSearchList(Integer page, Integer rows){
        EasyUIDataGridResult result = searchService.getSearchList(page,rows);
        return result;
    }

    @RequestMapping("/search/save")
    @ResponseBody
    public TaotaoResult addEquipment(Search search, String content){
        TaotaoResult result = searchService.addSearch(search,content);
        return result;
    }
}
