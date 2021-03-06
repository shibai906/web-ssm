package com.gradu.pro.service;

import java.util.List;

public interface CommonFeildService<T> {
    void insert(T t);
    T query(String id) ;
    List<T> querySearch(T t) ;
    void update(T t);
    void delUpdate(String id) ;
    List<T> queryAll(T t) ;
    int queryCountAll() ;
}
