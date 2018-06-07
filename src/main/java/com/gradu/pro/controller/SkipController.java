package com.gradu.pro.controller;


import com.gradu.pro.model.*;
import com.gradu.pro.service.ConBasicInforService;
import com.gradu.pro.service.ConBuildUnitMessService;
import com.gradu.pro.service.DateDictionaryService;
import com.gradu.pro.util.DateUtils;
import org.omg.Messaging.SYNC_WITH_TRANSPORT;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/skip")
public class SkipController {

    public static final int PAGENUM = 2 ;  // 分页，一页显示10条数据
    public static final int MAXPAGENUM = 10 ; // 大分页

    @Resource
    private DateDictionaryService dateDictionaryService ;

    @Resource
    private ConBuildUnitMessService conBuildUnitMessService ;

    @Resource
    private ConBasicInforService conBasicInforService ;

    @RequestMapping(value="/index", method={RequestMethod.POST,RequestMethod.GET})
    public String skipIndex(Model model){
        return "index";
    }

    @RequestMapping(value="/one", method={RequestMethod.POST,RequestMethod.GET})
    public String skipOne(Model model , ConBasicInforForm conBasicInforForm){
        if(conBasicInforForm == null) {
            conBasicInforForm = new ConBasicInforForm() ;
        }
        System.out.println("这里也挺重要的，过来吧，快活啊"+conBasicInforForm);
        List<DateDictionary> dateDictionaries = dateDictionaryService.getName("con_type") ;
        model.addAttribute("con_type",dateDictionaries) ;
        if(conBasicInforForm.getTimeMax() != null && !conBasicInforForm.getTimeMax().trim().equals(""))
            conBasicInforForm.setTimeMaxL(DateUtils.getDate(conBasicInforForm.getTimeMax()));
        if(conBasicInforForm.getTimeMin() != null && !conBasicInforForm.getTimeMin().trim().equals(""))
            conBasicInforForm.setTimeMinL(DateUtils.getDate(conBasicInforForm.getTimeMin()));

        Integer count = conBasicInforService.searchCount(conBasicInforForm) ;
        if(count != null) {
            if (count % PAGENUM == 0) {
                count = count / PAGENUM;
            } else
                count = count / PAGENUM + 1;
            if (conBasicInforForm.getNum() == 0) {
                conBasicInforForm.setNum(1);
            }
        }
        conBasicInforForm.setPageSize((conBasicInforForm.getNum()-1)*PAGENUM) ;
        conBasicInforForm.setPageNum(PAGENUM);
        List<ConBasicInfor> conBasicInforForms = conBasicInforService.search(conBasicInforForm) ;
        for(ConBasicInfor conBasicInfor : conBasicInforForms) {
            conBasicInfor.setConDateString(DateUtils.converDate(conBasicInfor.getConDate()));
        }
        model.addAttribute("cbi",conBasicInforForm) ;
        model.addAttribute("cbifs",conBasicInforForms) ;
        model.addAttribute("count",count) ;
        model.addAttribute("num",conBasicInforForm.getNum()) ;
        return "one" ;

    }

    @RequestMapping(value="/two", method={RequestMethod.POST,RequestMethod.GET})
    public String skipTwo(Model model , int num){
        if(num == 0) {
            num ++ ;
        }
        List<DateDictionary> dateDictionaries = dateDictionaryService.getName("con_nature") ;
        model.addAttribute("con_nature",dateDictionaries) ;
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
    public String skipFour(Model model ,int num){
        int tatol = conBasicInforService.queryCountAll() ;
        if(tatol % MAXPAGENUM == 0) {
            tatol = tatol / MAXPAGENUM ;
        }else
            tatol = tatol / MAXPAGENUM + 1;
        model.addAttribute("count",tatol) ;
        model.addAttribute("num",num) ;
        ConBasicInfor conBasicInfor = new ConBasicInfor() ;
        conBasicInfor.setPageNum(MAXPAGENUM);
        conBasicInfor.setPageSize((num-1)*MAXPAGENUM);
        List<ConBasicInfor> lists = conBasicInforService.queryAll(conBasicInfor) ;
        for(ConBasicInfor conBasicInfor1 : lists) {
            conBasicInfor1.setConDateString(DateUtils.converDate(conBasicInfor1.getConDate()));
        }
        model.addAttribute("cbi",lists) ;
        return "four" ;
    }

    @RequestMapping(value="/five", method={RequestMethod.POST,RequestMethod.GET})
    public String skipFive(Model model){
        return "five" ;
    }

    @RequestMapping(value="/six", method={RequestMethod.POST,RequestMethod.GET})
    public String skipSix(Model model ){
        List<ConBuildUnitMess> conBuildUnitMesses = conBuildUnitMessService.getAllCbum();
        model.addAttribute("cbum",conBuildUnitMesses) ;
        List<DateDictionary> dateDictionaries = dateDictionaryService.getName("con_type") ;
        model.addAttribute("con_type",dateDictionaries) ;
        return "six" ;
    }

}
