package com.lab.mapper;

import com.lab.pojo.LabItem;
import com.lab.pojo.LabItemExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LabItemMapper {
    int countByExample(LabItemExample example);

    int deleteByExample(LabItemExample example);

    int deleteByPrimaryKey(Long id);

    int insert(LabItem record);

    int insertSelective(LabItem record);

    List<LabItem> selectByExample(LabItemExample example);

    LabItem selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") LabItem record, @Param("example") LabItemExample example);

    int updateByExample(@Param("record") LabItem record, @Param("example") LabItemExample example);

    int updateByPrimaryKeySelective(LabItem record);

    int updateByPrimaryKey(LabItem record);
}