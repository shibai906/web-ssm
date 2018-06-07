package com.gradu.pro.service.imp;

import com.gradu.pro.dao.ConBasicInforMonthDao;
import com.gradu.pro.model.ConBasicInfor;
import com.gradu.pro.model.ConBasicInforForm;
import com.gradu.pro.model.ConBasicInforMonth;
import com.gradu.pro.service.ConBasicInforMonthService;
import com.gradu.pro.service.ConBasicInforService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class ConBasicInforMonthServiceImp implements ConBasicInforMonthService {

    @Resource
    private ConBasicInforMonthDao conBasicInforMonthDao ;


    @Override
    public List<ConBasicInforMonth> queryYear(ConBasicInforMonth conBasicInforMonth) {
        return conBasicInforMonthDao.queryYear(conBasicInforMonth);
    }

    @Override
    public void insert(ConBasicInforMonth conBasicInforMonth) {

    }

    @Override
    public ConBasicInforMonth query(String id) {
        return null;
    }

    @Override
    public List<ConBasicInforMonth> querySearch(ConBasicInforMonth conBasicInforMonth) {
        return null;
    }

    @Override
    public void update(ConBasicInforMonth conBasicInforMonth) {

    }

    @Override
    public void delUpdate(String id) {

    }

    @Override
    public List<ConBasicInforMonth> queryAll(ConBasicInforMonth conBasicInforMonth) {
        return null;
    }

    @Override
    public int queryCountAll() {
        return 0;
    }
}
