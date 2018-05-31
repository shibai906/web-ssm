package com.gradu.pro.controller;

import com.gradu.pro.model.ConBasicInfor;
import com.gradu.pro.service.ConBasicInforService;
import com.gradu.pro.util.DateUtils;
import com.gradu.pro.util.FileUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("/cbi")
public class ConBasicInforController {

    @Resource
    private ConBasicInforService conBasicInforService ;

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
            conBasicInfor.setConDate(DateUtils.getDate(request.getParameter("conDate"))) ;
            conBasicInfor.setConAmout(new BigDecimal(request.getParameter("conAmout"))) ;
            conBasicInfor.setProjectLinkman(request.getParameter("projectLinkman")) ;
            conBasicInfor.setRemark(request.getParameter("remark")) ;
            conBasicInfor.setSelBudget(request.getParameter("selBudget")) ;
            conBasicInforService.insert(conBasicInfor);
            System.out.println("conBasicInfor="+conBasicInfor);
        }

        return "index" ;
    }

    @RequestMapping(value="/query", method={RequestMethod.POST,RequestMethod.GET})
    public Object query(String id){

        ConBasicInfor conBasicInfor = conBasicInforService.query(id) ;
        System.out.println(conBasicInfor);
        return "" ;
    }

    @RequestMapping(value="/queryAll", method={RequestMethod.POST,RequestMethod.GET})
    public Object queryAll(){


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
