package com.gradu.pro.model;

import java.math.BigDecimal;

public class ConAddToInfor extends CommonFeild {

    public String conBasicInfor ;       // 合同信息
    public String conSerialNum ;        // 合同编号
    public BigDecimal addToMoney ;      // 追加金额
    public String conAccess ;           // 追加附件目录


    public String getConBasicInfor() {
        return conBasicInfor;
    }

    public void setConBasicInfor(String conBasicInfor) {
        this.conBasicInfor = conBasicInfor;
    }

    public String getConSerialNum() {
        return conSerialNum;
    }

    public void setConSerialNum(String conSerialNum) {
        this.conSerialNum = conSerialNum;
    }

    public BigDecimal getAddToMoney() {
        return addToMoney;
    }

    public void setAddToMoney(BigDecimal addToMoney) {
        this.addToMoney = addToMoney;
    }

    public String getConAccess() {
        return conAccess;
    }

    public void setConAccess(String conAccess) {
        this.conAccess = conAccess;
    }


    @Override
    public String toString() {
        return "ConAddToInfor{" +
                ", conBasicInfor='" + conBasicInfor + '\'' +
                ", conSerialNum='" + conSerialNum + '\'' +
                ", addToMoney=" + addToMoney +
                ", conAccess='" + conAccess + '\'' +
                '}';
    }
}
