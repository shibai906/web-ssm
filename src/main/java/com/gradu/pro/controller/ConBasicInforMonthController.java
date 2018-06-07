package com.gradu.pro.controller;


import com.gradu.pro.model.ConBasicInforMonth;
import com.gradu.pro.service.ConBasicInforMonthService;
import com.gradu.pro.util.JSONTran;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/cbim")
public class ConBasicInforMonthController {

    @Resource
    private ConBasicInforMonthService conBasicInforMonthService ;

    @ResponseBody
    @RequestMapping(value="/yme", method={RequestMethod.POST,RequestMethod.GET})
    public Object getYearMonthExpend(ConBasicInforMonth conBasicInforMonth) {

        if(conBasicInforMonth == null) {
            conBasicInforMonth = new ConBasicInforMonth() ;
        }
        conBasicInforMonth.setConBasicInfor("a3d97fca-5ca2-46d7-91da-8edabfaab42e");
        conBasicInforMonth.setYear("2018");
        List<ConBasicInforMonth> lists = conBasicInforMonthService.queryYear(conBasicInforMonth) ;
        Map<String,String> maps = new HashMap<>() ;
        for(ConBasicInforMonth conBasicInfor : lists) {
            maps.put(conBasicInfor.getMonth(),conBasicInfor.getExpend().toString()) ;
        }
        String json = JSONTran.toJSON(maps) ;
        System.out.println(json);

        return null ;

    }

}
