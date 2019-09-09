package com.lab.protal.controller;

import com.lab.common.util.TaotaoResult;
import com.lab.pojo.Search;
import com.lab.service.SearchService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;


@Controller
public class MemberDescController {

    @Resource
    private SearchService searchService;

    @RequestMapping("/memberDesc")
    @ResponseBody
    public TaotaoResult SearchDesc(HttpServletRequest request) throws IOException{
        request.setCharacterEncoding("utf-8");
        String id = new String(request.getParameter("id").getBytes("ISO8859-1"),"UTF-8");
        long itemId = Long.parseLong(id);
        Search search = searchService.getSearchById(itemId);
        request.setAttribute("searchDesc",search);
        return TaotaoResult.ok();
    }

    @RequestMapping(value = "/search_desc/{id}")
    public String search(@PathVariable String id,HttpServletRequest request){

        System.out.println("here");
        long itemId = Long.parseLong(id);
        Search search = searchService.getSearchById(itemId);
        request.setAttribute("searchDesc",search);
        return "search_desc";
    }
}
