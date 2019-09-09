package com.lab.service;

import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.common.util.TaotaoResult;
import com.lab.pojo.Member;

import java.util.List;

public interface MemberService {

    EasyUIDataGridResult getMemberList(int page, int rows);

    TaotaoResult addMember(Member member);

    List<Member> getMemberAllList();
}
