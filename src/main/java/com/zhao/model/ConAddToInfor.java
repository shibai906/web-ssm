package com.zhao.model;

import java.math.BigDecimal;
import java.util.Date;

public class ConAddToInfor {

    public String id ;                  // uuid
    public String conBasicInfor ;       // 合同信息
    public String conSerialNum ;        // 合同编号
    public BigDecimal addToMoney ;      // 追加金额
    public String conAccess ;           // 追加附件目录
    public long createTime ;            // 创建日期
    public long updateTime ;            // 更新日期

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

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

    public long getCreateTime() {
        return createTime;
    }

    public void setCreateTime(long createTime) {
        this.createTime = createTime;
    }

    public long getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(long updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "ConAddToInfor{" +
                "id='" + id + '\'' +
                ", conBasicInfor='" + conBasicInfor + '\'' +
                ", conSerialNum='" + conSerialNum + '\'' +
                ", addToMoney=" + addToMoney +
                ", conAccess='" + conAccess + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
