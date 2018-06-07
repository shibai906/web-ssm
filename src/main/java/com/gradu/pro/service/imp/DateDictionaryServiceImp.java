package com.gradu.pro.service.imp;

import com.gradu.pro.dao.DateDictionaryDao;
import com.gradu.pro.model.DateDictionary;
import com.gradu.pro.service.DateDictionaryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DateDictionaryServiceImp implements DateDictionaryService {

    @Resource
    private DateDictionaryDao dateDictionaryDao ;

    @Override
    public void insert(DateDictionary dateDictionary) {
        dateDictionary.setCreateTime(System.currentTimeMillis());
        dateDictionaryDao.insert(dateDictionary);
    }

    @Override
    public DateDictionary query(String id) {
        return dateDictionaryDao.query(id);
    }

    @Override
    public List<DateDictionary> querySearch(DateDictionary dateDictionary) {
        return dateDictionaryDao.querySearch(dateDictionary);
    }

    @Override
    public void update(DateDictionary dateDictionary) {
        dateDictionaryDao.update(dateDictionary);
    }

    @Override
    public void delUpdate(String id) {
        dateDictionaryDao.delUpdate(id);
    }

    @Override
    public List<DateDictionary> queryAll(DateDictionary dateDictionary) {
        return dateDictionaryDao.queryAll(dateDictionary);
    }

    @Override
    public int queryCountAll() {
        return dateDictionaryDao.queryCountAll();
    }

    @Override
    public List<DateDictionary> getName(String name) {
        return dateDictionaryDao.getName(name);
    }
}
