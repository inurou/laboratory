package com.lab.mapper;

import com.lab.pojo.EquipmentListDesc;
import com.lab.pojo.EquipmentListDescExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EquipmentListDescMapper {
    int countByExample(EquipmentListDescExample example);

    int deleteByExample(EquipmentListDescExample example);

    int deleteByPrimaryKey(Long id);

    int insert(EquipmentListDesc record);

    int insertSelective(EquipmentListDesc record);

    List<EquipmentListDesc> selectByExample(EquipmentListDescExample example);

    EquipmentListDesc selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") EquipmentListDesc record, @Param("example") EquipmentListDescExample example);

    int updateByExample(@Param("record") EquipmentListDesc record, @Param("example") EquipmentListDescExample example);

    int updateByPrimaryKeySelective(EquipmentListDesc record);

    int updateByPrimaryKey(EquipmentListDesc record);
}