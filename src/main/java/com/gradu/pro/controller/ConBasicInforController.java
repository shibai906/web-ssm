package com.gradu.pro.controller;

import com.gradu.pro.model.ConBasicInfor;
import com.gradu.pro.service.ConBasicInforService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/cbi")
public class ConBasicInforController {

    @Resource
    private ConBasicInforService conBasicInforService ;

    @RequestMapping(value="/insert", method={RequestMethod.POST,RequestMethod.GET})
    public Object insert(ConBasicInfor conBasicInfor){

        conBasicInforService.insert(conBasicInfor);

        return "" ;
    }

    @RequestMapping(value="/query", method={RequestMethod.POST,RequestMethod.GET})
    public Object query(String id){

        ConBasicInfor conBasicInfor = conBasicInforService.query(id) ;
        System.out.println(conBasicInfor);
        return "" ;
    }

    @RequestMapping(value="/queryAll", method={RequestMethod.POST,RequestMethod.GET})
    public Object queryAll(){

        List<ConBasicInfor> conBasicInfors = conBasicInforService.queryAll() ;
        for(ConBasicInfor conBasicInfor : conBasicInfors)
            System.out.println(conBasicInfor);
        return "" ;
    }

    @RequestMapping(value="/delUpdate", method={RequestMethod.POST,RequestMethod.GET})
    public Object delUpdate(String id){
        conBasicInforService.delUpdate(id);
        return "" ;
    }

    @RequestMapping(value="/update", method={RequestMethod.POST,RequestMethod.GET})
    public Object update(ConBasicInfor conBasicInfor){

        conBasicInforService.update(conBasicInfor);
        ConBasicInfor conBasicInfor1 = conBasicInforService.query(conBasicInfor.getId()) ;
        System.out.println(conBasicInfor1);
        return "" ;
    }



}
