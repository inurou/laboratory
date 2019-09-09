package com.lab.protal.controller;

import com.lab.pojo.EquipmentList;
import com.lab.pojo.Member;
import com.lab.pojo.Search;
import com.lab.service.LabItemService;
import com.lab.service.MemberService;
import com.lab.service.SearchService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 首页指引
 */
@Controller
public class IndexController {

    @Resource
    private SearchService searchService;

    @Resource
    private MemberService memberService;

    @Resource
    private LabItemService labItemService;

    @RequestMapping("/index")
    public String index(HttpServletRequest request, HttpSession session){

        List<Search> list = searchService.getSearchAllList();
        request.setAttribute("searchAllList",list);

        String token = request.getParameter("token");
        session.setAttribute("token",token);
        return "index";
    }

    @RequestMapping(value = "/login")
    public String login(){
        return "login";
    }

    @RequestMapping(value = "/about-coffee")
    public String coffee(){
        return "about-coffee";
    }
    @RequestMapping(value = "/contact",method = RequestMethod.GET)
    public String contact(){
        return "contact";
    }

    /*@RequestMapping(value = "/contact",method = RequestMethod.POST)
    public String contactTo(HttpServletRequest request){

        String member = request.getParameter("member");
        System.out.println(member);
        return "contact";
    }*/

    @RequestMapping(value = "/updates")
    public String updates(HttpServletRequest request){
        List<EquipmentList> equiment= labItemService.getEquimentAllList();
        request.setAttribute("equipment",equiment);
        return "updates";
    }

    @RequestMapping(value = "/products")
    public String products(HttpServletRequest request){

        List<Member> list = memberService.getMemberAllList();
        request.setAttribute("memberAllList",list);
        return "products";
    }

    @RequestMapping(value = "/featured-product-1")
    public String featured(){
        return "featured-product-1";
    }

    @RequestMapping(value = "/equipment")
    public String equipment(HttpServletRequest request){

        String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        request.setAttribute("date",date);
        return "equipment";
    }


}
