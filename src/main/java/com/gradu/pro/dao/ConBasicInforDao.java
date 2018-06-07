package com.gradu.pro.dao;


import com.gradu.pro.model.ConBasicInfor;
import com.gradu.pro.model.ConBasicInforForm;

import java.util.List;

public interface ConBasicInforDao extends CommonDao<ConBasicInfor> {

    List<ConBasicInfor> search(ConBasicInforForm conBasicInforForm) ;
    Integer searchCount(ConBasicInforForm conBasicInforForm) ;

}
