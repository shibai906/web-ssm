package com.gradu.pro.service;

import com.gradu.pro.model.ConBasicInforMonth;

import java.util.List;

public interface ConBasicInforMonthService extends CommonFeildService<ConBasicInforMonth> {
    List<ConBasicInforMonth> queryYear(ConBasicInforMonth conBasicInforMonth) ;
}
