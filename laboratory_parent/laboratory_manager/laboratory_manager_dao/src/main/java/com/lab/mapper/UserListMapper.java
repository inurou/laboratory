package com.lab.mapper;

import com.lab.pojo.UserList;
import com.lab.pojo.UserListExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserListMapper {
    int countByExample(UserListExample example);

    int deleteByExample(UserListExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(UserList record);

    int insertSelective(UserList record);

    List<UserList> selectByExample(UserListExample example);

    UserList selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") UserList record, @Param("example") UserListExample example);

    int updateByExample(@Param("record") UserList record, @Param("example") UserListExample example);

    int updateByPrimaryKeySelective(UserList record);

    int updateByPrimaryKey(UserList record);
}