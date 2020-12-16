package com.controller;

import com.pojo.User_;
import com.service.User_Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/user_")
public class User_Controller {
    @Autowired
    private User_Service user_Service;

    @RequestMapping("/allUser_")
    public String list(Model model){
        List<User_> list=user_Service.queryAllUser_();
        model.addAttribute("list",list);
        return "allUser_";
    }

    @RequestMapping("/toAddUser_")
    public String toAddUser(){
        return "addUser_";
    }

    @RequestMapping("/addUser_")
    public String addPaper(User_ user_) {
        user_Service.addUser_(user_);
        return "redirect:/user_/allUser_";
    }

    @RequestMapping("/del/{id}")
    public String deletePaper(@PathVariable("id") int id) {
        user_Service.deleteUser_ById(id);
        return "redirect:/user_/allUser_";
    }

    @RequestMapping("toUpdateUser_")
    public String toUpdateUser_(Model model, int id) {
        model.addAttribute("user_", user_Service.queryById(id));
        return "updateUser_";
    }

    @RequestMapping("/updateUser_")
    public String updatePaper(Model model, User_ user_) {
        user_Service.updateUser_(user_);
        user_ = user_Service.queryById(user_.getId());
        model.addAttribute("user_", user_);
        return "redirect:/user_/allUser_";
    }
}
