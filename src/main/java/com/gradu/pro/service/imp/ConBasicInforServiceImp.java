package com.gradu.pro.service.imp;

import com.gradu.pro.dao.ConBasicInforDao;
import com.gradu.pro.model.ConBasicInfor;
import com.gradu.pro.service.ConBasicInforService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ConBasicInforServiceImp implements ConBasicInforService {

    @Resource
    private ConBasicInforDao conBasicInforDao ;

    @Override
    public void insert(ConBasicInfor conBasicInfor) {
        conBasicInfor.setCreateTime(System.currentTimeMillis());
        conBasicInforDao.insert(conBasicInfor);
    }

    @Override
    public ConBasicInfor query(String id) {
        return conBasicInforDao.query(id);
    }

    @Override
    public List<ConBasicInfor> querySearch(ConBasicInfor conBasicInfor) {
        return conBasicInforDao.querySearch(conBasicInfor);
    }

    @Override
    public void update(ConBasicInfor conBasicInfor) {
        conBasicInforDao.update(conBasicInfor);
    }

    @Override
    public void delUpdate(String id) {
        conBasicInforDao.delUpdate(id);
    }

    @Override
    public List<ConBasicInfor> queryAll(ConBasicInfor conBasicInfor) {
        return conBasicInforDao.queryAll(conBasicInfor);
    }

    @Override
    public int queryCountAll() {
        return conBasicInforDao.queryCountAll();
    }
}
