package com.gradu.pro.model;

import java.math.BigDecimal;

public class ConBasicInforForm extends ConBasicInfor {

    private BigDecimal conAmoutMax ;
    private BigDecimal conAmoutMin ;
    private String timeMax ;
    private String timeMin ;
    private long timeMaxL ;
    private long timeMinL ;
    private int num ;

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public BigDecimal getConAmoutMax() {
        return conAmoutMax;
    }

    public void setConAmoutMax(BigDecimal conAmoutMax) {
        this.conAmoutMax = conAmoutMax;
    }

    public BigDecimal getConAmoutMin() {
        return conAmoutMin;
    }

    public void setConAmoutMin(BigDecimal conAmoutMin) {
        this.conAmoutMin = conAmoutMin;
    }

    public String getTimeMax() {
        return timeMax;
    }

    public void setTimeMax(String timeMax) {
        this.timeMax = timeMax;
    }

    public String getTimeMin() {
        return timeMin;
    }

    public void setTimeMin(String timeMin) {
        this.timeMin = timeMin;
    }

    public long getTimeMaxL() {
        return timeMaxL;
    }

    public void setTimeMaxL(long timeMaxL) {
        this.timeMaxL = timeMaxL;
    }

    public long getTimeMinL() {
        return timeMinL;
    }

    public void setTimeMinL(long timeMinL) {
        this.timeMinL = timeMinL;
    }

    @Override
    public String toString() {
        return "ConBasicInforForm{" +
                "conAmoutMax='" + conAmoutMax + '\'' +
                ", conAmoutMin='" + conAmoutMin + '\'' +
                ", timeMax='" + timeMax + '\'' +
                ", timeMin='" + timeMin + '\'' +
                ", timeMaxL=" + timeMaxL +
                ", timeMinL=" + timeMinL +
                ", conSerialNum='" + conSerialNum + '\'' +
                ", conName='" + conName + '\'' +
                ", conType='" + conType + '\'' +
                ", conDate=" + conDate +
                ", projectLinkman='" + projectLinkman + '\'' +
                ", remark='" + remark + '\'' +
                ", conBuildUnit='" + conBuildUnitMessId + '\'' +
                ", conAmout=" + conAmout +
                ", selBudget='" + selBudget + '\'' +
                ", conAccess='" + conAccess + '\'' +
                ", status=" + status +
                ", conBuildUnitMess=" + conBuildUnitMess +
                ", pageSize=" + pageSize +
                ", pageNum=" + pageNum +
                '}';
    }
}
