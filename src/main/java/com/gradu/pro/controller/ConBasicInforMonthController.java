package com.gradu.pro.controller;


import com.gradu.pro.model.ConBasicInforMonth;
import com.gradu.pro.service.ConBasicInforMonthService;
import com.gradu.pro.util.JSONTran;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.math.BigDecimal;
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

    @RequestMapping(value="/insert", method={RequestMethod.POST,RequestMethod.GET})
    public Object insert(String id , BigDecimal mon1,BigDecimal mon2,BigDecimal mon3,BigDecimal mon4,BigDecimal mon5,BigDecimal mon6,BigDecimal mon7,BigDecimal mon8,BigDecimal mon9,BigDecimal mon10,BigDecimal mon11,BigDecimal mon12,String year) {

        insert("1",year,mon1,id) ;
        insert("2",year,mon2,id) ;
        insert("3",year,mon3,id) ;
        insert("4",year,mon4,id) ;
        insert("5",year,mon5,id) ;
        insert("6",year,mon6,id) ;
        insert("7",year,mon7,id) ;
        insert("8",year,mon8,id) ;
        insert("9",year,mon9,id) ;
        insert("10",year,mon10,id) ;
        insert("11",year,mon11,id) ;
        insert("12",year,mon12,id) ;

        return "redirect:/skip/four?num=1";

    }
    private void insert(String month , String year, BigDecimal mon,String id){
        ConBasicInforMonth conBasicInforMonth = new ConBasicInforMonth() ;
        conBasicInforMonth.setConBasicInfor(id);
        conBasicInforMonth.setYear(year);
        conBasicInforMonth.setExpend(mon);
        conBasicInforMonth.setMonth(month);
        conBasicInforMonthService.insert(conBasicInforMonth);
    }

    @RequestMapping(value="/update", method={RequestMethod.POST,RequestMethod.GET})
    public Object update(String id , BigDecimal mon1,BigDecimal mon2,BigDecimal mon3,BigDecimal mon4,BigDecimal mon5,BigDecimal mon6,BigDecimal mon7,BigDecimal mon8,BigDecimal mon9,BigDecimal mon10,BigDecimal mon11,BigDecimal mon12,String year,String id1,String id2,String id3,String id4,String id5,String id6,String id7,String id8,String id9,String id10,String id11,String id12) {

        update(id1,mon1);
        update(id2,mon2);
        update(id3,mon3);
        update(id4,mon4);
        update(id5,mon5);
        update(id6,mon6);
        update(id7,mon7);
        update(id8,mon8);
        update(id9,mon9);
        update(id10,mon10);
        update(id11,mon11);
        update(id12,mon12);

        return "redirect:/skip/four?num=1" ;

    }


    public void update(String id,BigDecimal bigDecimal) {
        ConBasicInforMonth conBasicInforMonth = new ConBasicInforMonth() ;
        conBasicInforMonth.setId(id);
        conBasicInforMonth.setExpend(bigDecimal);
        conBasicInforMonth.setUpdateTime(System.currentTimeMillis());
        conBasicInforMonthService.update(conBasicInforMonth);

    }

}
