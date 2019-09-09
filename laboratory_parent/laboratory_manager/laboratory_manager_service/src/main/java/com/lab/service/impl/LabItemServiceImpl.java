package com.lab.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.common.util.IDUtils;
import com.lab.common.util.TaotaoResult;
import com.lab.mapper.EquipmentListDescMapper;
import com.lab.mapper.EquipmentListMapper;
import com.lab.mapper.LabItemMapper;
import com.lab.pojo.EquipmentList;
import com.lab.pojo.EquipmentListDesc;
import com.lab.pojo.EquipmentListExample;
import com.lab.pojo.LabItem;
import com.lab.service.LabItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * create by inu
 * 实验室器材分页信息
 */

@Service
public class LabItemServiceImpl implements LabItemService {

    @Autowired
    //private LabItemMapper labItemMapper;
    private EquipmentListMapper equipmentListMapper;

    @Autowired
    private EquipmentListDescMapper equipmentListDescMapper;

    @Override
    public EasyUIDataGridResult getItemList(int page, int rows) {

        //设置分页信息
        PageHelper.startPage(page,rows);
        //执行查询
        //LabItemExample example = new LabItemExample();
        EquipmentListExample example = new EquipmentListExample();
        List<EquipmentList> list =  equipmentListMapper.selectByExample(example);


        //得到查询结果
        PageInfo<EquipmentList> pageInfo = new PageInfo<>(list);
        EasyUIDataGridResult result = new EasyUIDataGridResult();
        result.setRows(list);
        result.setTotal(pageInfo.getTotal());
        return result;
    }

    @Override
    public TaotaoResult addItem(EquipmentList item, String desc) {
        //生成设备id
        long itemId = IDUtils.genItemId();
        //补全item属性
        item.setId(itemId);
        item.setStatus(1);
        //设备状态，1-正常，2-下架，3-删除
        item.setCreatetime(new Date());
        //向设备表插入数据
        equipmentListMapper.insert(item);
        //补全pojo属性
        EquipmentListDesc equipmentListDesc = new EquipmentListDesc();
        equipmentListDesc.setId(itemId);
        equipmentListDesc.setEquipmentdesc(desc);
        equipmentListDesc.setCreatetime(new Date());
        //向设备描述表中插入数据
        equipmentListDescMapper.insert(equipmentListDesc);
        //返回结果
        return TaotaoResult.ok();
    }

    @Override
    public List<EquipmentList> getEquimentAllList() {
        EquipmentListExample example = new EquipmentListExample();
        List<EquipmentList> list =  equipmentListMapper.selectByExample(example);
        return list;
    }


}
