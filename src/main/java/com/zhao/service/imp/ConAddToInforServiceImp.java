package com.zhao.service.imp;

import com.zhao.dao.ConAddToInforDao;
import com.zhao.model.ConAddToInfor;
import com.zhao.service.ConAddToInforService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ConAddToInforServiceImp implements ConAddToInforService {

    @Resource
    private ConAddToInforDao conAddToInforDao ;

    @Override
    public void insert(ConAddToInfor conAddToInfor) {
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
    public void delUpdate(int delSign) {
        conAddToInforDao.delUpdate(delSign);
    }

    @Override
    public List<ConAddToInfor> queryAll() {
        return conAddToInforDao.queryAll();
    }
}
