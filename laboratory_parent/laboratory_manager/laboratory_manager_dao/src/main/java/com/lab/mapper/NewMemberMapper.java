package com.lab.mapper;

import com.lab.pojo.NewMember;
import com.lab.pojo.NewMemberExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NewMemberMapper {
    int countByExample(NewMemberExample example);

    int deleteByExample(NewMemberExample example);

    int deleteByPrimaryKey(Long id);

    int insert(NewMember record);

    int insertSelective(NewMember record);

    List<NewMember> selectByExample(NewMemberExample example);

    NewMember selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") NewMember record, @Param("example") NewMemberExample example);

    int updateByExample(@Param("record") NewMember record, @Param("example") NewMemberExample example);

    int updateByPrimaryKeySelective(NewMember record);

    int updateByPrimaryKey(NewMember record);
}