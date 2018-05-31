package com.gradu.pro.dao;

import java.util.List;

public interface CommonDao<T> {
    void insert(T t);
    T query(String id) ;
    List<T> querySearch(T t) ;
    void update(T t);
    void delUpdate(String id) ;
    List<T> queryAll(T t) ;
    int queryCountAll() ;
}
