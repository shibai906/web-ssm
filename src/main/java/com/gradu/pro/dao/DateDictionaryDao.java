package com.gradu.pro.dao;

import com.gradu.pro.model.DateDictionary;

import java.util.List;

public interface DateDictionaryDao extends CommonDao<DateDictionary> {
    List<DateDictionary> getName(String name) ;
}
