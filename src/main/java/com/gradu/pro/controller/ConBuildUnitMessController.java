package com.gradu.pro.controller;

import com.gradu.pro.model.ConBuildUnitMess;
import com.gradu.pro.service.ConBuildUnitMessService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/cbum")
public class ConBuildUnitMessController {

    @Resource
    private ConBuildUnitMessService conBuildUnitMessService ;

    @RequestMapping(value="/insert", method={RequestMethod.POST,RequestMethod.GET})
    public Object insert(ConBuildUnitMess conBuildUnitMess){
        System.out.println(conBuildUnitMess);
        conBuildUnitMessService.insert(conBuildUnitMess);

        return "" ;
    }

    @RequestMapping(value="/query", method={RequestMethod.POST,RequestMethod.GET})
    public Object query(String id){

        ConBuildUnitMess conBuildUnitMess = conBuildUnitMessService.query(id) ;
        System.out.println(conBuildUnitMess);
        return "" ;
    }

    @RequestMapping(value="/queryAll", method={RequestMethod.POST,RequestMethod.GET})
    public Object queryAll(){

        return "" ;
    }

    @RequestMapping(value="/delUpdate", method={RequestMethod.POST,RequestMethod.GET})
    public Object delUpdate(String id){
        conBuildUnitMessService.delUpdate(id);
        return "redirect:/skip/two?num=1";
    }

    @RequestMapping(value="/update", method={RequestMethod.POST,RequestMethod.GET})
    public Object update(ConBuildUnitMess conBuildUnitMess){

        conBuildUnitMessService.update(conBuildUnitMess);
        ConBuildUnitMess conBasicInfor1 = conBuildUnitMessService.query(conBuildUnitMess.getId()) ;
        System.out.println(conBasicInfor1);
        return "" ;
    }

}

