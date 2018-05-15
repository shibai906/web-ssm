package com.zhao.service.imp;

import com.zhao.dao.DateDictionaryDao;
import com.zhao.model.DateDictionary;
import com.zhao.service.DateDictionaryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DateDictionaryServiceImp implements DateDictionaryService {

    @Resource
    private DateDictionaryDao dateDictionaryDao ;

    @Override
    public void insert(DateDictionary dateDictionary) {
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
    public List<DateDictionary> queryAll() {
        return dateDictionaryDao.queryAll();
    }
}
