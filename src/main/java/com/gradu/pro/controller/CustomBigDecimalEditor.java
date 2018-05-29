package com.gradu.pro.controller;

import java.beans.PropertyEditorSupport;
import java.math.BigDecimal;

public class CustomBigDecimalEditor extends PropertyEditorSupport {

    @Override
    public void setAsText(String text) throws IllegalArgumentException {
        BigDecimal a = new BigDecimal("0.00");
        try{
            a = new BigDecimal(text);
            setValue(a);
        }catch (Exception e){
            e.printStackTrace();
            setValue(null);
        }
    }

}
