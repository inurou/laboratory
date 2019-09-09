package com.lab.protal.controller;


import com.lab.common.entity.Order;
import com.lab.common.util.JsonUtils;
import com.lab.pojo.UserList;
import com.lab.protal.util.MessageUtil;
import com.lab.common.util.TaotaoResult;
import com.lab.pojo.EquipmentList;
import com.lab.pojo.LentList;
import com.lab.service.LabItemService;
import com.lab.service.LentListService;
import com.lab.service.RegisterService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * create by inu
 * 主要进行设备的租借，AddCount函数是当用户点击增加按钮后，执行该函数，同理当用户点击删除按钮后执行SubCount函数，
 * 并通过一个StringBuilder进行缓存，当用户点击提交后，证明用户已经选择完毕，后台会将刚刚缓存的租借信息进行处理，得出
 * 有效的租借信息，具体处理工具类详见MessageUtil类中，最终将用户租借信息整合起来进行提交。
 */
@Controller
public class LentController {

    @Resource
    private LentListService lentListService;

    @Resource
    private LabItemService labItemService;


    LentList lentList = new LentList();
    private StringBuilder stringBuilder = new StringBuilder();

    @RequestMapping("AddCount")
    @ResponseBody
    public String AddCount(HttpServletRequest request) throws UnsupportedEncodingException {
        String id = new String(request.getParameter("id").getBytes("ISO8859-1"),"UTF-8");
        String num = new String(request.getParameter("num").getBytes("ISO8859-1"),"UTF-8");

        int itemId = Integer.parseInt(id);
        int itemNum = Integer.parseInt(num);

        List<EquipmentList> list = labItemService.getEquimentAllList();
        String name = list.get(itemId).getEquipmentname();

        stringBuilder.append(name + "*" + itemNum + "   ");
        lentList.setMessage(stringBuilder.toString());

        return "ok";

    }
    @RequestMapping("SubCount")
    @ResponseBody
    public String SubCount(HttpServletRequest request) throws UnsupportedEncodingException {
        String id = new String(request.getParameter("id").getBytes("ISO8859-1"),"UTF-8");
        String num = new String(request.getParameter("num").getBytes("ISO8859-1"),"UTF-8");

        int itemId = Integer.parseInt(id);
        int itemNum = Integer.parseInt(num);

        List<EquipmentList> list = labItemService.getEquimentAllList();
        String name = list.get(itemId).getEquipmentname();

        stringBuilder.append(name + "*" + itemNum + "   ");
        lentList.setMessage(stringBuilder.toString());

        return "ok";

    }

    @RequestMapping("lentsubmit")
    @ResponseBody
    public TaotaoResult Lent(HttpServletRequest request) throws UnsupportedEncodingException, ParseException {

        LentList lentList1 = new LentList();

        String name = new String(request.getParameter("name").getBytes("ISO8859-1"),"UTF-8");

        String number = new String(request.getParameter("number").getBytes("ISO8859-1"),"UTF-8");

        String phone = new String(request.getParameter("phone").getBytes("ISO8859-1"),"UTF-8");

        String lenttime = new String(request.getParameter("lenttime").getBytes("ISO8859-1"),"UTF-8");

        String backtime = new String(request.getParameter("backtime").getBytes("ISO8859-1"),"UTF-8");

        StringBuilder sb = new StringBuilder();
        if(lentList.getMessage() == "" || lentList.getMessage() == null){
            return TaotaoResult.build(400,"无效输入");
        }else {
            ArrayList<Order> arrayList = new MessageUtil().OrderMessage(lentList.getMessage());

            for (int i = 0; i < arrayList.size(); i++) {
                sb.append(arrayList.get(i).getName() + "*" + arrayList.get(i).getNum() + " ");
            }
            lentList1.setName(name);
            lentList1.setNumber(number);
            lentList1.setPhone(phone);
            lentList1.setLenttime(new SimpleDateFormat("yyyy-MM-dd").parse(lenttime));
            lentList1.setBacktime(new SimpleDateFormat("yyyy-MM-dd").parse(backtime));
            lentList1.setMessage(sb.toString());
            sb.setLength(0);
            stringBuilder = null;

            TaotaoResult result = lentListService.addNewLent(lentList1);
            return result;


        }
    }
}
