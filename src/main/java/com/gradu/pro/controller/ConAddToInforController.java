package com.gradu.pro.controller;

import com.gradu.pro.model.ConAddToInfor;
import com.gradu.pro.service.ConAddToInforService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/cati")
public class ConAddToInforController {

    @Resource
    private ConAddToInforService conAddToInforService ;

    @RequestMapping(value="/insert", method={RequestMethod.POST,RequestMethod.GET})
    public Object insert(ConAddToInfor conAddToInfor){

        conAddToInforService.insert(conAddToInfor);

        return "" ;
    }

    @RequestMapping(value="/query", method={RequestMethod.POST,RequestMethod.GET})
    public Object query(String id){

        ConAddToInfor conAddToInfor = conAddToInforService.query(id) ;
        System.out.println(conAddToInfor);
        return "" ;
    }

    @RequestMapping(value="/queryAll", method={RequestMethod.POST,RequestMethod.GET})
    public Object queryAll(){

        return "" ;
    }

    @RequestMapping(value="/delUpdate", method={RequestMethod.POST,RequestMethod.GET})
    public Object delUpdate(String id){
        conAddToInforService.delUpdate(id);
        return "" ;
    }

    @RequestMapping(value="/update", method={RequestMethod.POST,RequestMethod.GET})
    public Object update(ConAddToInfor conAddToInfor){

        conAddToInforService.update(conAddToInfor);
        ConAddToInfor conAddToInfor1 = conAddToInforService.query(conAddToInfor.getId()) ;
        System.out.println(conAddToInfor1);
        return "" ;
    }



}
