package com.lab.service.impl;

import com.alibaba.dubbo.common.utils.StringUtils;
import com.lab.common.util.JsonUtils;
import com.lab.common.util.TaotaoResult;
import com.lab.jedis.JedisClient;
import com.lab.mapper.UserListMapper;
import com.lab.pojo.UserList;
import com.lab.pojo.UserListExample;
import com.lab.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.List;
import java.util.UUID;

@Service
public class RegisterServiceImpl implements RegisterService {

    @Autowired
    private UserListMapper userListMapper;

    private String USER_SESSION = "USER_SESSION";

    @Autowired
    private JedisClient jedisClient;

    @Override
    public TaotaoResult addNewUser(UserList user) {
        userListMapper.insert(user);
        return TaotaoResult.ok();
    }

    @Override
    public TaotaoResult login(long number, String password) {
        UserListExample example = new UserListExample();
        UserListExample.Criteria criteria = example.createCriteria();
        criteria.andNumberEqualTo(number);
        List<UserList> list = userListMapper.selectByExample(example);
        if(list == null || list.size() == 0){
            return TaotaoResult.build(400,"学号或密码不正确");
        }
        UserList user = list.get(0);
        if(!DigestUtils.md5DigestAsHex(password.getBytes()).equals(user.getPassword())){
            return TaotaoResult.build(400,"学号或密码不正确");
        }
        //生成token，使用uuid
        String token = UUID.randomUUID().toString();
        //清空密码
        user.setPassword(null);
        //把用户信息保存到redis，key就是token，value就是用户信息
        jedisClient.set(USER_SESSION + ":" + token, JsonUtils.objectToJson(user));
        //设置key的过期时间
        jedisClient.expire(USER_SESSION + ":" + token, 1800);
        //返回登录成功，其中要把token返回。
        return TaotaoResult.ok(token);
    }

    @Override
    public TaotaoResult resetPass(long number, String password) {
        UserListExample example = new UserListExample();
        UserListExample.Criteria criteria = example.createCriteria();
        criteria.andNumberEqualTo(number);

        List<UserList> list = userListMapper.selectByExample(example);

        if(list == null || list.size() == 0) {
           return TaotaoResult.build(400,"学号输入错误");
        }else {
            UserList user = list.get(0);


            user.setPassword(DigestUtils.md5DigestAsHex(password.getBytes()));


            userListMapper.updateByPrimaryKey(user);

            return TaotaoResult.ok();
        }
    }

    @Override
    public TaotaoResult getUserByToken(String token) {
        String json = jedisClient.get(USER_SESSION + ":" + token);
        if (StringUtils.isBlank(json)) {
            return TaotaoResult.build(400, "用户登录已经过期");
        }
        //重置Session的过期时间
        jedisClient.expire(USER_SESSION + ":" + token, 1800);
        //把json转换成User对象
        UserList user = JsonUtils.jsonToPojo(json, UserList.class);
        return TaotaoResult.ok(user);
    }


}
