package com.service;

import com.pojo.User_;

import java.util.List;

public interface User_Service {
    int addUser_(User_ user);

    int deleteUser_ById(int id);

    int updateUser_(User_ user);

    User_ queryById(int id);

    List<User_> queryAllUser_();
}
