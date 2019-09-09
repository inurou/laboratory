package com.lab.mapper;

import com.lab.pojo.Search;
import com.lab.pojo.SearchExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SearchMapper {
    int countByExample(SearchExample example);

    int deleteByExample(SearchExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Search record);

    int insertSelective(Search record);

    List<Search> selectByExampleWithBLOBs(SearchExample example);

    List<Search> selectByExample(SearchExample example);

    Search selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Search record, @Param("example") SearchExample example);

    int updateByExampleWithBLOBs(@Param("record") Search record, @Param("example") SearchExample example);

    int updateByExample(@Param("record") Search record, @Param("example") SearchExample example);

    int updateByPrimaryKeySelective(Search record);

    int updateByPrimaryKeyWithBLOBs(Search record);

    int updateByPrimaryKey(Search record);
}