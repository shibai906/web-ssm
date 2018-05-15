package com.zhao.service.imp;

import com.zhao.dao.ConBasicInforDao;
import com.zhao.model.ConBasicInfor;
import com.zhao.service.ConBasicInforService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ConBasicInforServiceImp implements ConBasicInforService {

    @Resource
    private ConBasicInforDao conBasicInforDao ;

    @Override
    public void insert(ConBasicInfor conBasicInfor) {
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
    public List<ConBasicInfor> queryAll() {
        return conBasicInforDao.queryAll();
    }
}
