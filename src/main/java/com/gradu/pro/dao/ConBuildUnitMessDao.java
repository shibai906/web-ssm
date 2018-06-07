package com.gradu.pro.dao;

import com.gradu.pro.model.ConBuildUnitMess;

import java.util.List;

public interface ConBuildUnitMessDao extends CommonDao<ConBuildUnitMess> {
    List<ConBuildUnitMess> getAllCbum() ;
}
