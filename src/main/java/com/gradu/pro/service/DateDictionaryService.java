package com.gradu.pro.service;

import com.gradu.pro.model.DateDictionary;

import java.util.List;

public interface DateDictionaryService extends CommonFeildService<DateDictionary> {
    List<DateDictionary> getName(String name) ;
}
