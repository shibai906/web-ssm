package com.gradu.pro.model;

import java.math.BigDecimal;

public class ConBasicInforMonth extends CommonFeild {


    public String conBasicInfor ;   // 映射到主表
    private String year ;           // 存放年
    private String month ;          // 存放月
    private BigDecimal expend ;     // 存放每月的花费

    public String getConBasicInfor() {
        return conBasicInfor;
    }

    public void setConBasicInfor(String conBasicInfor) {
        this.conBasicInfor = conBasicInfor;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public BigDecimal getExpend() {
        return expend;
    }

    public void setExpend(BigDecimal expend) {
        this.expend = expend;
    }
}
