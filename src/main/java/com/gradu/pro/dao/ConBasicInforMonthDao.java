package com.gradu.pro.dao;

import com.gradu.pro.model.ConBasicInforMonth;

import java.util.List;

public interface ConBasicInforMonthDao extends CommonDao<ConBasicInforMonth> {

    List<ConBasicInforMonth> queryYear(ConBasicInforMonth conBasicInforMonth) ;

}
