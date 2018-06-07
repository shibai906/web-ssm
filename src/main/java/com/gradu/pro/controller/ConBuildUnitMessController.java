package com.gradu.pro.controller;

import com.gradu.pro.model.ConBuildUnitMess;
import com.gradu.pro.model.DateDictionary;
import com.gradu.pro.service.ConBuildUnitMessService;
import com.gradu.pro.service.DateDictionaryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/cbum")
public class ConBuildUnitMessController {

    @Resource
    private DateDictionaryService dateDictionaryService ;

    @Resource
    private ConBuildUnitMessService conBuildUnitMessService ;

    @RequestMapping(value="/insert", method={RequestMethod.POST,RequestMethod.GET})
    public Object insert(ConBuildUnitMess conBuildUnitMess){
        System.out.println(conBuildUnitMess);
        conBuildUnitMessService.insert(conBuildUnitMess);

        return "redirect:/skip/two?num=1";
    }

    @RequestMapping(value="/query", method={RequestMethod.POST,RequestMethod.GET})
    public Object query(String id , Model model){
        List<DateDictionary> dateDictionaries = dateDictionaryService.getName("con_nature") ;
        model.addAttribute("con_nature",dateDictionaries) ;
        ConBuildUnitMess conBuildUnitMess = conBuildUnitMessService.query(id) ;
        model.addAttribute("cbum",conBuildUnitMess) ;
        return "update_two" ;
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
        return "redirect:/skip/two?num=1";
    }

}

