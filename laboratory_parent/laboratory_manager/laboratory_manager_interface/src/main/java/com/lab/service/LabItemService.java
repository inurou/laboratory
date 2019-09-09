package com.lab.service;

import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.common.util.TaotaoResult;
import com.lab.pojo.EquipmentList;
import com.lab.pojo.LabItem;

import java.util.List;

public interface LabItemService {

    EasyUIDataGridResult getItemList(int page,int rows);

    TaotaoResult addItem(EquipmentList item, String desc);

    List<EquipmentList> getEquimentAllList();

}
