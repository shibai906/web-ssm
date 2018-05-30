package com.gradu.pro.controller;


import com.gradu.pro.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Controller
@RequestMapping("/skip")
public class SkipController {

    @Resource
    private UserService userService ;

    @RequestMapping(value="/index", method={RequestMethod.POST,RequestMethod.GET})
    public String skipIndex(Model model){
        return "index";
    }

    @RequestMapping(value="/one", method={RequestMethod.POST,RequestMethod.GET})
    public String skipOne(Model model){
        return "one" ;
    }

    @RequestMapping(value="/two", method={RequestMethod.POST,RequestMethod.GET})
    public String skipTwo(Model model){
        return "two" ;
    }

    @RequestMapping(value="/three", method={RequestMethod.POST,RequestMethod.GET})
    public String skipThree(Model model){
        return "three" ;
    }

    @RequestMapping(value="/four", method={RequestMethod.POST,RequestMethod.GET})
    public String skipFour(Model model){
        return "four" ;
    }

    @RequestMapping(value="/five", method={RequestMethod.POST,RequestMethod.GET})
    public String skipFive(Model model){
        return "five" ;
    }

    @RequestMapping(value="/six", method={RequestMethod.POST,RequestMethod.GET})
    public String skipSix(Model model){
        return "six" ;
    }

}
