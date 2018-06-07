package com.gradu.pro.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {

    // 提供几种支持方式
    public static Long getDate(String date) {
        if(date.contains("-")) {
            return getDate(date,"-") ;
        }

        if(date.contains("/")) {
            return getDate(date,"/") ;
        }

        if(date.contains("\\")) {
            return getDate(date,"\\") ;
        }

        if(date.contains(" ")) {
            return getDate( date," ") ;
        }
        return null ;

    }

    public static Long getDate(String date , String pattern) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy" + pattern + "MM" + pattern + "dd") ;

            return simpleDateFormat.parse(date).getTime() ;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return 0L ;
    }

    public static String converDate(long date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd") ;
        Date date1 = new Date(date) ;
        return simpleDateFormat.format(date1) ;
    }

}
