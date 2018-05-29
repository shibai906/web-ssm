package com.gradu.pro.model;

import java.util.Date;

public class ConBuildUnitMess extends CommonFeild {

    public String conBuildUnit ;    // 承建单位
    public String busiLicenseNum ;  // 营业执照编号
    public String enterLegal ;      // 企业法人
    public String linkmanIphone ;   // 联系人电话
    public String enterAddress ;    // 企业地址
    public String remark ;            // 备注
    public String enterType ;       // 企业性质
    public String enterAptitude ;   // 企业资质
    public String enterCode ;       // 企业代码
    public String enterHonor ;      // 企业联系人
    public String honerEmail ;      // 联系人Email


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

    public String getEnterLegal() {
        return enterLegal;
    }

    public void setEnterLegal(String enterLegal) {
        this.enterLegal = enterLegal;
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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }


    @Override
    public String toString() {
        return "ConAddToInfor{" +
                ", conBuildUnit='" + conBuildUnit + '\'' +
                ", busiLicenseNum='" + busiLicenseNum + '\'' +
                ", enterLegal='" + enterLegal + '\'' +
                ", linkmanIphone='" + linkmanIphone + '\'' +
                ", enterAddress='" + enterAddress + '\'' +
                ", remark='" + remark + '\'' +
                ", enterType='" + enterType + '\'' +
                ", enterAptitude='" + enterAptitude + '\'' +
                ", enterCode='" + enterCode + '\'' +
                ", enterHonor='" + enterHonor + '\'' +
                ", honerEmail='" + honerEmail + '\'' +
                '}';
    }

}
