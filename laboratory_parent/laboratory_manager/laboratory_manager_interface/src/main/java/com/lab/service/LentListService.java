package com.lab.service;

import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.common.util.TaotaoResult;
import com.lab.pojo.LentList;
import com.lab.pojo.NewMember;

public interface LentListService {
    TaotaoResult addNewLent(LentList lentList);

    EasyUIDataGridResult getLentList(int page, int rows);
}
