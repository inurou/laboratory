package com.lab.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.common.util.IDUtils;
import com.lab.common.util.TaotaoResult;
import com.lab.mapper.MemberMapper;
import com.lab.pojo.Member;
import com.lab.pojo.MemberExample;
import com.lab.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper memberMapper;

    @Override
    public EasyUIDataGridResult getMemberList(int page, int rows) {
        //设置分页信息
        PageHelper.startPage(page,rows);
        //执行查询
        MemberExample example = new MemberExample();
        List<Member> list =  memberMapper.selectByExample(example);
        //得到查询结果
        PageInfo<Member> pageInfo = new PageInfo<>(list);
        EasyUIDataGridResult result = new EasyUIDataGridResult();
        result.setRows(list);
        result.setTotal(pageInfo.getTotal());
        return result;
    }

    @Override
    public TaotaoResult addMember(Member member) {
        //生成设备id
        long id = IDUtils.genItemId();
        //补全item属性
        member.setId(id);
        //向设备表插入数据
        memberMapper.insert(member);
        return TaotaoResult.ok();
    }

    @Override
    public List<Member> getMemberAllList() {
        //执行查询
        MemberExample memberExample = new MemberExample();
        List<Member> list =  memberMapper.selectByExample(memberExample);
        return list;
    }

}
