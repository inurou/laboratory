package com.lab.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.common.util.IDUtils;
import com.lab.common.util.TaotaoResult;
import com.lab.mapper.LentListMapper;
import com.lab.pojo.LentList;
import com.lab.pojo.LentListExample;
import com.lab.pojo.NewMember;
import com.lab.pojo.NewMemberExample;
import com.lab.service.LentListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LentListServiceImpl implements LentListService {

    @Autowired
    private LentListMapper lentListMapper;

    @Override
    public TaotaoResult addNewLent(LentList lentList) {
        long id = IDUtils.genItemId();
        lentList.setId(id);
        lentListMapper.insert(lentList);
        return TaotaoResult.ok();
    }

    @Override
    public EasyUIDataGridResult getLentList(int page, int rows) {
        //设置分页信息
        PageHelper.startPage(page,rows);
        //执行查询
        LentListExample example = new LentListExample();
        List<LentList> list =  lentListMapper.selectByExample(example);
        //得到查询结果
        PageInfo<LentList> pageInfo = new PageInfo<>(list);
        EasyUIDataGridResult result = new EasyUIDataGridResult();
        result.setRows(list);
        result.setTotal(pageInfo.getTotal());
        return result;
    }
}
