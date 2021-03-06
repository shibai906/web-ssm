package com.gradu.pro.controller;

import com.gradu.pro.model.ConBasicInfor;
import com.gradu.pro.model.ConBuildUnitMess;
import com.gradu.pro.model.DateDictionary;
import com.gradu.pro.service.ConBasicInforService;
import com.gradu.pro.service.ConBuildUnitMessService;
import com.gradu.pro.service.DateDictionaryService;
import com.gradu.pro.util.DateUtils;
import com.gradu.pro.util.FileUtil;
import com.gradu.pro.util.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.annotation.Resource;
import javax.security.sasl.SaslServer;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("/cbi")
public class ConBasicInforController {

    @Resource
    private DateDictionaryService dateDictionaryService ;

    @Resource
    private ConBasicInforService conBasicInforService ;

    @Resource
    private ConBuildUnitMessService conBuildUnitMessService ;

    private String find ;
    private String content ;

    /*
    这里是第一种添加方式
    @RequestMapping(value="/insert", method={RequestMethod.POST,RequestMethod.GET})
    public Object insert(@RequestParam("file")CommonsMultipartFile[] files, HttpServletRequest request){

        System.out.println(request.getParameter("conSerialNum"));
        for(int i = 0 ; i < files.length ; i ++) {
            System.out.println(files[i].getOriginalFilename());
            if(!files[i].isEmpty()) {
                long pre = System.currentTimeMillis();
            }
            try {
                // 拿到文件输出流，同时重新命名上传文件名称
                FileOutputStream os = new FileOutputStream("C:/files/" + new Date().getTime() + ".txt");
                // 拿到上传发完美的输入流
                InputStream in =  files[i].getInputStream();

                // 以写字节的方式写文件
                int b = 0 ;
                byte[] bytes = new byte[1024] ;
                while ((b=in.read()) != -1) {
                    os.write(bytes,0,b);
                }
                os.flush();
                os.close();
                in.close();
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("上传文件失败");
            }
        }

        return "index" ;
    }
*/
    @RequestMapping(value="/insert", method={RequestMethod.POST,RequestMethod.GET})
    public Object insert(HttpServletRequest request,HttpServletResponse response) throws IOException {
        ConBasicInfor conBasicInfor = new ConBasicInfor() ;
        StringBuilder sb = new StringBuilder() ;
        // 创建一个通用的多部分解析器
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        // 判断request是否有文件上传，即多部分请求
        if(multipartResolver.isMultipart(request)) {
            // 转换成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            // 取出所有request中的文件名
            Iterator<String> iter = multiRequest.getFileNames() ;
            while (iter.hasNext()) {
                String name = iter.next() ;
                System.out.println(name);
                // 取得上传文件
                MultipartFile file = multiRequest.getFile(name) ;
                if(file != null) {
                    // 取得当前上传文件的文件名称
                    String myFileName = file.getOriginalFilename() ;
                    // 如果名称不为“”，说明该文件存在，否则说明该文件不存在
                    if (myFileName.trim() != "") {
                        // 取得当前上传文件的文件名称
                        System.out.println(myFileName);
                        // 重命名上传后的文件名称
                        String fileName = System.currentTimeMillis() + "." + FileUtil.getFileSuffix(myFileName) ;
                        String path = "c:/files/" + fileName ;
                        File localFile = new File(path) ;
                        if(!localFile.isDirectory()) {
                            localFile.mkdirs() ;
                        }
                        file.transferTo(localFile);
                        sb.append(localFile.getAbsolutePath()) ;
                        sb.append("@#") ;
                    }
                }
            }
            conBasicInfor.setConAccess(sb.toString());
            conBasicInfor.setConSerialNum(request.getParameter("conSerialNum")) ;
            conBasicInfor.setConName(request.getParameter("conName")) ;
            conBasicInfor.setConType(request.getParameter("conType")) ;
            conBasicInfor.setConBuildUnit(request.getParameter("conBuildUnit")) ;
            if(DateUtils.getDate(request.getParameter("conDate")) != null)
                conBasicInfor.setConDate(DateUtils.getDate(request.getParameter("conDate"))) ;
            conBasicInfor.setConAmout(new BigDecimal(request.getParameter("conAmout"))) ;
            conBasicInfor.setProjectLinkman(request.getParameter("projectLinkman")) ;
            conBasicInfor.setRemark(request.getParameter("remark")) ;
            conBasicInfor.setSelBudget(request.getParameter("selBudget")) ;
            conBasicInfor.setStatus(1);
            conBasicInforService.insert(conBasicInfor);
            System.out.println("conBasicInfor="+conBasicInfor);
        }

        return "redirect:/skip/four?num=1";
    }

    @RequestMapping(value="/condition", method={RequestMethod.POST,RequestMethod.GET})
    public Object conditionQuery(String find , String content , Model model) {
        if(find == null)
            find = this.find ;
        if(content == null)
            content = this.content ;
        this.find = find ;
        this.content = content ;
        ConBasicInfor conBasicInfor = new ConBasicInfor() ;
        if(find.equals("conSerialNum")) {
            conBasicInfor.setConSerialNum(content);

        }
        if(find.equals("conName")) {
            conBasicInfor.setConName(content);
        }
        List<ConBasicInfor> lists = conBasicInforService.conditionSearch(conBasicInfor) ;
        for(ConBasicInfor conBasicInfor1 : lists) {
            conBasicInfor1.setConDateString(DateUtils.converDate(conBasicInfor1.getConDate()));
        }
        model.addAttribute("cbi",lists) ;
        model.addAttribute("find",find) ;
        model.addAttribute("content",content) ;
        return "five" ;

    }

    @RequestMapping(value="/query", method={RequestMethod.POST,RequestMethod.GET})
    public Object query(Model model , String id){

        ConBasicInfor conBasicInfor = conBasicInforService.query(id) ;
        System.out.println("conBasicInfor:"+conBasicInfor);
        conBasicInfor.setConDateString(DateUtils.converDate(conBasicInfor.getConDate()));
        model.addAttribute("cbi",conBasicInfor) ;
        List<ConBuildUnitMess> conBuildUnitMesses = conBuildUnitMessService.getAllCbum();
        model.addAttribute("cbum",conBuildUnitMesses) ;
        List<DateDictionary> dateDictionaries = dateDictionaryService.getName("con_type") ;
        model.addAttribute("con_type",dateDictionaries) ;
        return "update_six" ;
    }

    @RequestMapping(value="/queryAll", method={RequestMethod.POST,RequestMethod.GET})
    public Object queryAll(){


        return "" ;
    }

    @RequestMapping(value="/delUpdate", method={RequestMethod.POST,RequestMethod.GET})
    public Object delUpdate(String id){
        conBasicInforService.delUpdate(id);
        return "redirect:/skip/four?num=1";
    }

    @RequestMapping(value="/update", method={RequestMethod.POST,RequestMethod.GET})
    public Object update(ConBasicInfor conBasicInfor,Model model){
        conBasicInforService.update(conBasicInfor);
        return "redirect:/skip/four?num=1";
    }

    @RequestMapping(value="/termina", method={RequestMethod.POST,RequestMethod.GET})
    public Object termina(ConBasicInfor conBasicInfor) {
        conBasicInforService.termina(conBasicInfor);
        return "redirect:condition" ;
    }

    @RequestMapping(value="/addTo", method={RequestMethod.POST,RequestMethod.GET})
    public Object addTo(ConBasicInfor conBasicInfor) {
        ConBasicInfor conBasicInfor1 = conBasicInforService.query(conBasicInfor.id) ;
        conBasicInfor1.setConAmout(conBasicInfor1.getConAmout().add(conBasicInfor.getConAmout()));
        conBasicInforService.update(conBasicInfor1);
        return "redirect:condition" ;
    }

}
