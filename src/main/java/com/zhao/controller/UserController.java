package com.zhao.controller;

import com.zhao.model.User;
import com.zhao.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService ;

    @RequestMapping("/show")
    public String success(Model model, int id){
        User user = userService.getById(id) ;
        model.addAttribute("user",user) ;
        System.out.println(user);
        return "index";
    }


}
