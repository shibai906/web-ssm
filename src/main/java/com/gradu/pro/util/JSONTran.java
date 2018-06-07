package com.gradu.pro.util;

import java.util.Map;

public class JSONTran {

    public static String toJSON(Map<String,String> map) {

        StringBuilder stringBuilder = new StringBuilder("{") ;
        for(Map.Entry<String,String> entry : map.entrySet() ) {
            stringBuilder.append("'").append(entry.getKey()).append("'").append(":").append("'").append(entry.getValue()).append("'").append(",") ;
        }
        String json = stringBuilder.toString();
        json = json.substring(0,json.length()-1) ;
        json = json + "}" ;

        return json ;
    }

}
