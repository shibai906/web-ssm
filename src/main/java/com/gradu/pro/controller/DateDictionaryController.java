package com.gradu.pro.controller;

import com.gradu.pro.model.DateDictionary;
import com.gradu.pro.service.DateDictionaryService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/dd")
public class DateDictionaryController {

    @Resource
    private DateDictionaryService dateDictionaryService ;

    @RequestMapping(value="/insert", method={RequestMethod.POST,RequestMethod.GET})
    public Object insert(DateDictionary dateDictionary){

        System.out.println(dateDictionary);
        dateDictionaryService.insert(dateDictionary);

        return "" ;
    }

    @RequestMapping(value="/query", method={RequestMethod.POST,RequestMethod.GET})
    public Object query(String id){
        System.out.println(id);
        DateDictionary dateDictionary = dateDictionaryService.query(id) ;
        System.out.println(dateDictionary);
        return "" ;
    }

    @RequestMapping(value="/queryAll", method={RequestMethod.POST,RequestMethod.GET})
    public Object queryAll(){


        return "" ;
    }

    @RequestMapping(value="/delUpdate", method={RequestMethod.POST,RequestMethod.GET})
    public Object delUpdate(String id){
        dateDictionaryService.delUpdate(id);
        return "" ;
    }

    @RequestMapping(value="/update", method={RequestMethod.POST,RequestMethod.GET})
    public Object update(DateDictionary dateDictionary){

        dateDictionaryService.update(dateDictionary);
        DateDictionary dateDictionary1 = dateDictionaryService.query(dateDictionary.getId()) ;
        System.out.println(dateDictionary1);
        return "" ;
    }

}
