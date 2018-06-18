package com.gradu.pro.service;

import com.gradu.pro.model.ConBasicInfor;
import com.gradu.pro.model.ConBasicInforForm;

import java.util.List;

public interface ConBasicInforService extends CommonFeildService<ConBasicInfor> {
    List<ConBasicInfor> search(ConBasicInforForm conBasicInforForm) ;
    Integer searchCount(ConBasicInforForm conBasicInforForm) ;
    List<ConBasicInfor> conditionSearch(ConBasicInfor conBasicInfor) ;
    void termina(ConBasicInfor conBasicInfor) ;
    List<ConBasicInfor> searchMap(ConBasicInfor conBasicInfor) ;
}
