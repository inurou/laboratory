package com.lab.pagehelper;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lab.mapper.EquipmentListMapper;
import com.lab.mapper.LabItemMapper;
import com.lab.mapper.UserMapper;
import com.lab.pojo.*;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * create by inu
 * 分页插件测试（pagehelper）
 */
public class TestPageHelper {

    @Test
    public void testPageHelper() throws Exception{
        //1、mybatis文件中配置分页插件
        //2、执行查询之前配置分页条件，使用PageHelper的静态方法
        PageHelper.startPage(1,10);
        //3、执行查询
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:spring/applicationContext-dao.xml");
        //LabItemMapper labItemMapper = applicationContext.getBean(LabItemMapper.class);
        EquipmentListMapper equipmentListMapper = applicationContext.getBean(EquipmentListMapper.class);

        //创建Example对象
        //LabItemExample example = new LabItemExample();
        EquipmentListExample example = new EquipmentListExample();
        //UserExample.Criteria criteria = example.createCriteria();
        //List<LabItem> list = labItemMapper.selectByExample(example);
        List<EquipmentList> list = equipmentListMapper.selectByExample(example);

        /*for(int i = 0; i < list.size();i++){
            System.out.println(list.get(i).getEquipmentcontent());
        }*/
        System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"+list);
        //4、取分页信息，使用PageInfo对象取。
        //PageInfo<LabItem> pageInfo = new PageInfo<>(list);
        PageInfo<EquipmentList> pageInfo = new PageInfo<>(list);
        pageInfo.getTotal();
        System.out.println("总记录数：" + pageInfo.getTotal());
        System.out.println("总页数：" + pageInfo.getPages());
        System.out.println("返回的记录数：" + list.size());
    }
}
