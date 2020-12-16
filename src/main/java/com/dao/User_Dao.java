package com.dao;

import com.pojo.User_;

import java.util.List;

public interface User_Dao {
    int addUser_(User_ user_);

    int deleteUser_ById(int id);

    int updateUser_(User_ user_);

    User_ queryById(int id);

    List<User_> queryAllUser_();
}
