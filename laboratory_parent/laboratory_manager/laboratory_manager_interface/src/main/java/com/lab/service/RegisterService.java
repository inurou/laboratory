package com.lab.service;

import com.lab.common.util.TaotaoResult;
import com.lab.pojo.NewMember;
import com.lab.pojo.UserList;

public interface RegisterService {
    TaotaoResult addNewUser(UserList user);

    TaotaoResult login(long number,String password);

    TaotaoResult resetPass(long number,String password);

    TaotaoResult getUserByToken(String token);
}
