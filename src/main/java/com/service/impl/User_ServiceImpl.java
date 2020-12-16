package com.service.impl;

import com.pojo.User_;
import com.dao.User_Dao;

import com.service.User_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class User_ServiceImpl implements User_Service{
    @Autowired
    private User_Dao user_Dao;

    @Override
    public int addUser_(User_ user_) {
        return user_Dao.addUser_(user_);
    }

    @Override
    public int deleteUser_ById(int id) {
        return user_Dao.deleteUser_ById(id);
    }

    @Override
    public int updateUser_(User_ user_) {
        return user_Dao.updateUser_(user_);
    }

    @Override
    public User_ queryById(int id) {
        return user_Dao.queryById(id);
    }

    @Override
    public List<User_> queryAllUser_() {
        return user_Dao.queryAllUser_();
    }
}
