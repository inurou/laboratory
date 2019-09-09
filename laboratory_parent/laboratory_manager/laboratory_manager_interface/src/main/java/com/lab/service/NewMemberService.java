package com.lab.service;

import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.common.util.TaotaoResult;
import com.lab.pojo.NewMember;

public interface NewMemberService {
    TaotaoResult addNewMember(NewMember newMember);

    EasyUIDataGridResult getNewMemberList(int page, int rows);
}
