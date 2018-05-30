package com.gradu.pro.util;

import java.lang.reflect.Array;
import java.util.Arrays;

public class FileUtil {

    public static String getFileSuffix(String fileName) {
        if(fileName == null || fileName.trim().equals(""))
            return null ;
        if(fileName.contains(".")){
            String[] strings = fileName.split("\\.") ;
            return strings[strings.length-1] ;
        }
        return null ;
    }

}
