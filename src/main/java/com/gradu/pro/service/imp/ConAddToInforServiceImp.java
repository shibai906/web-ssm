package com.gradu.pro.service.imp;

import com.gradu.pro.dao.ConAddToInforDao;
import com.gradu.pro.model.ConAddToInfor;
import com.gradu.pro.service.ConAddToInforService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ConAddToInforServiceImp implements ConAddToInforService {

    @Resource
    private ConAddToInforDao conAddToInforDao ;

    @Override
    public void insert(ConAddToInfor conAddToInfor) {
        conAddToInfor.setCreateTime(System.currentTimeMillis());
        conAddToInforDao.insert(conAddToInfor);
    }

    @Override
    public ConAddToInfor query(String id) {

        return conAddToInforDao.query(id);
    }

    @Override
    public List<ConAddToInfor> querySearch(ConAddToInfor conAddToInfor) {

        return conAddToInforDao.querySearch(conAddToInfor);
    }

    @Override
    public void update(ConAddToInfor conAddToInfor) {
        conAddToInforDao.update(conAddToInfor);
    }

    @Override
    public void delUpdate(String id) {
        conAddToInforDao.delUpdate(id);
    }

    @Override
    public List<ConAddToInfor> queryAll() {
        return conAddToInforDao.queryAll();
    }
}
