package com.gradu.pro.util;

public class StringUtils {

    public static String utf_8(String string) {
        try {
            byte[] bytes = string.getBytes("iso-8859-1");
            return new String(bytes,"utf-8") ;
        }catch (Exception e) {
            e.printStackTrace();
        }
        return null ;
    }

}
