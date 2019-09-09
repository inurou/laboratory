package com.lab.mapper;

import com.lab.pojo.EquipmentList;
import com.lab.pojo.EquipmentListExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EquipmentListMapper {
    int countByExample(EquipmentListExample example);

    int deleteByExample(EquipmentListExample example);

    int deleteByPrimaryKey(Long id);

    int insert(EquipmentList record);

    int insertSelective(EquipmentList record);

    List<EquipmentList> selectByExample(EquipmentListExample example);

    EquipmentList selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") EquipmentList record, @Param("example") EquipmentListExample example);

    int updateByExample(@Param("record") EquipmentList record, @Param("example") EquipmentListExample example);

    int updateByPrimaryKeySelective(EquipmentList record);

    int updateByPrimaryKey(EquipmentList record);
}