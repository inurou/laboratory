package com.lab.mapper;

import com.lab.pojo.LentList;
import com.lab.pojo.LentListExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LentListMapper {
    int countByExample(LentListExample example);

    int deleteByExample(LentListExample example);

    int deleteByPrimaryKey(Long id);

    int insert(LentList record);

    int insertSelective(LentList record);

    List<LentList> selectByExample(LentListExample example);

    LentList selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") LentList record, @Param("example") LentListExample example);

    int updateByExample(@Param("record") LentList record, @Param("example") LentListExample example);

    int updateByPrimaryKeySelective(LentList record);

    int updateByPrimaryKey(LentList record);
}