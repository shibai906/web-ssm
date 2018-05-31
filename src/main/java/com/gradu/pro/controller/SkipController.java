package com.gradu.pro.controller;


import com.gradu.pro.model.ConBuildUnitMess;
import com.gradu.pro.service.ConBuildUnitMessService;
import com.gradu.pro.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/skip")
public class SkipController {

    public static final int PAGENUM = 2 ;  // 分页，一页显示10条数据

    @Resource
    private UserService userService ;

    @Resource
    private ConBuildUnitMessService conBuildUnitMessService ;

    @RequestMapping(value="/index", method={RequestMethod.POST,RequestMethod.GET})
    public String skipIndex(Model model){
        return "index";
    }

    @RequestMapping(value="/one", method={RequestMethod.POST,RequestMethod.GET})
    public String skipOne(Model model){
        return "one" ;
    }

    @RequestMapping(value="/two", method={RequestMethod.POST,RequestMethod.GET})
    public String skipTwo(Model model , int num){
        if(num == 0) {
            num ++ ;
        }
        ConBuildUnitMess conBuildUnitMess = new ConBuildUnitMess() ;
        int numtatol = conBuildUnitMessService.queryCountAll() ;
        if(numtatol % PAGENUM == 0) {
            numtatol = numtatol / PAGENUM ;
        }else
            numtatol = numtatol / PAGENUM + 1;
        model.addAttribute("count",numtatol) ;
        model.addAttribute("num",num) ;
        conBuildUnitMess.setPageSize((num-1)*PAGENUM) ;
        conBuildUnitMess.setPageNum(PAGENUM);
        System.out.println(conBuildUnitMess.pageSize);
        System.out.println(conBuildUnitMess.pageNum);
        List<ConBuildUnitMess> lists = conBuildUnitMessService.queryAll(conBuildUnitMess) ;
        model.addAttribute("cbum",lists) ;
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
