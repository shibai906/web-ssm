package com.zhao.model;

import java.math.BigDecimal;

public class ConBasicInfor extends CommonFeild {

    public String conSerialNum ;        // 合同编号
    public String conName ;             // 合同名称
    public String conType ;             // 合同类型
    public long conDate ;               // 签订日期
    public String projectLinkman ;      // 项目联系人
    public String remark ;              // 备注
    public String conBuildUnit ;        // 承建单位
    public BigDecimal conAmout ;        // 合同金额
    public String selBudget ;           // 选择概算
    public String conAccess ;           // 合同附件

    public String getConSerialNum() {
        return conSerialNum;
    }

    public void setConSerialNum(String conSerialNum) {
        this.conSerialNum = conSerialNum;
    }

    public String getConName() {
        return conName;
    }

    public void setConName(String conName) {
        this.conName = conName;
    }

    public String getConType() {
        return conType;
    }

    public void setConType(String conType) {
        this.conType = conType;
    }

    public long getConDate() {
        return conDate;
    }

    public void setConDate(long conDate) {
        this.conDate = conDate;
    }

    public String getProjectLinkman() {
        return projectLinkman;
    }

    public void setProjectLinkman(String projectLinkman) {
        this.projectLinkman = projectLinkman;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getConBuildUnit() {
        return conBuildUnit;
    }

    public void setConBuildUnit(String conBuildUnit) {
        this.conBuildUnit = conBuildUnit;
    }

    public BigDecimal getConAmout() {
        return conAmout;
    }

    public void setConAmout(BigDecimal conAmout) {
        this.conAmout = conAmout;
    }

    public String getSelBudget() {
        return selBudget;
    }

    public void setSelBudget(String selBudget) {
        this.selBudget = selBudget;
    }

    public String getConAccess() {
        return conAccess;
    }

    public void setConAccess(String conAccess) {
        this.conAccess = conAccess;
    }


    @Override
    public String toString() {
        return "ConBasicInfor{" +
                ", conSerialNum='" + conSerialNum + '\'' +
                ", conName='" + conName + '\'' +
                ", conType='" + conType + '\'' +
                ", conDate=" + conDate +
                ", projectLinkman='" + projectLinkman + '\'' +
                ", remark='" + remark + '\'' +
                ", conBuildUnit='" + conBuildUnit + '\'' +
                ", conAmout=" + conAmout +
                ", selBudget='" + selBudget + '\'' +
                ", conAccess='" + conAccess + '\'' +
                '}';
    }
}
