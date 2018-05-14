package com.zhao.model;

import java.util.Date;

public class ConBuildUnitMess {

    public String id ;              // uuid
    public String conBuildUnit ;    // 承建单位
    public String busiLicenseNum ;  // 营业执照编号
    public String EnterLegal ;      // 企业法人
    public String linkmanIphone ;   // 联系人电话
    public String enterAddress ;    // 企业地址
    public String text ;            // 备注
    public String enterType ;       // 企业性质
    public String enterAptitude ;   // 企业资质
    public String enterCode ;       // 企业代码
    public String enterHonor ;      // 企业联系人
    public String honerEmail ;      // 联系人Email
    public long createTime ;        // 创建时间
    public long updateTime ;        // 更新时间

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getConBuildUnit() {
        return conBuildUnit;
    }

    public void setConBuildUnit(String conBuildUnit) {
        this.conBuildUnit = conBuildUnit;
    }

    public String getBusiLicenseNum() {
        return busiLicenseNum;
    }

    public void setBusiLicenseNum(String busiLicenseNum) {
        this.busiLicenseNum = busiLicenseNum;
    }

    public String getEnterLegal() {
        return EnterLegal;
    }

    public void setEnterLegal(String enterLegal) {
        EnterLegal = enterLegal;
    }

    public String getLinkmanIphone() {
        return linkmanIphone;
    }

    public void setLinkmanIphone(String linkmanIphone) {
        this.linkmanIphone = linkmanIphone;
    }

    public String getEnterAddress() {
        return enterAddress;
    }

    public void setEnterAddress(String enterAddress) {
        this.enterAddress = enterAddress;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getEnterType() {
        return enterType;
    }

    public void setEnterType(String enterType) {
        this.enterType = enterType;
    }

    public String getEnterAptitude() {
        return enterAptitude;
    }

    public void setEnterAptitude(String enterAptitude) {
        this.enterAptitude = enterAptitude;
    }

    public String getEnterCode() {
        return enterCode;
    }

    public void setEnterCode(String enterCode) {
        this.enterCode = enterCode;
    }

    public String getEnterHonor() {
        return enterHonor;
    }

    public void setEnterHonor(String enterHonor) {
        this.enterHonor = enterHonor;
    }

    public String getHonerEmail() {
        return honerEmail;
    }

    public void setHonerEmail(String honerEmail) {
        this.honerEmail = honerEmail;
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
                ", conBuildUnit='" + conBuildUnit + '\'' +
                ", busiLicenseNum='" + busiLicenseNum + '\'' +
                ", EnterLegal='" + EnterLegal + '\'' +
                ", linkmanIphone='" + linkmanIphone + '\'' +
                ", enterAddress='" + enterAddress + '\'' +
                ", text='" + text + '\'' +
                ", enterType='" + enterType + '\'' +
                ", enterAptitude='" + enterAptitude + '\'' +
                ", enterCode='" + enterCode + '\'' +
                ", enterHonor='" + enterHonor + '\'' +
                ", honerEmail='" + honerEmail + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }

}
