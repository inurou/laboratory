package com.lab.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.common.util.IDUtils;
import com.lab.common.util.TaotaoResult;
import com.lab.mapper.NewMemberMapper;
import com.lab.pojo.NewMember;
import com.lab.pojo.NewMemberExample;
import com.lab.service.NewMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class NewMemberServiceImpl implements NewMemberService {

    @Autowired
    private NewMemberMapper newMemberMapper;

    @Override
    public TaotaoResult addNewMember(NewMember newMember) {
        long id = IDUtils.genItemId();
        newMember.setId(id);
        newMember.setCreatetime(new Date());
        newMemberMapper.insert(newMember);
        return TaotaoResult.ok();
    }

    @Override
    public EasyUIDataGridResult getNewMemberList(int page, int rows) {
        //设置分页信息
        PageHelper.startPage(page,rows);
        //执行查询
        NewMemberExample example = new NewMemberExample();
        List<NewMember> list =  newMemberMapper.selectByExample(example);
        //得到查询结果
        PageInfo<NewMember> pageInfo = new PageInfo<>(list);
        EasyUIDataGridResult result = new EasyUIDataGridResult();
        result.setRows(list);
        result.setTotal(pageInfo.getTotal());
        return result;
    }
}
