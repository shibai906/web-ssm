package com.gradu.pro.controller;

import com.gradu.pro.model.User;
import com.gradu.pro.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService ;

    @RequestMapping(value="/show", method={RequestMethod.POST,RequestMethod.GET})
    public String success(Model model, int id){
        User user = userService.getById(id) ;
        model.addAttribute("user",user) ;
        System.out.println(user);
        return "index";
    }


}
