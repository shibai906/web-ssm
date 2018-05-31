package com.gradu.pro.service.imp;

import com.gradu.pro.dao.ConBuildUnitMessDao;
import com.gradu.pro.model.ConBuildUnitMess;
import com.gradu.pro.service.ConBuildUnitMessService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ConBuildUnitMessServiceImp implements ConBuildUnitMessService {

    @Resource
    private ConBuildUnitMessDao conBuildUnitMessDao ;

    @Override
    public void insert(ConBuildUnitMess conBuildUnitMess) {
        conBuildUnitMess.setCreateTime(System.currentTimeMillis());
        conBuildUnitMessDao.insert(conBuildUnitMess);
    }

    @Override
    public ConBuildUnitMess query(String id) {
        return conBuildUnitMessDao.query(id);
    }

    @Override
    public List<ConBuildUnitMess> querySearch(ConBuildUnitMess conBuildUnitMess) {
        return conBuildUnitMessDao.querySearch(conBuildUnitMess);
    }

    @Override
    public void update(ConBuildUnitMess conBuildUnitMess) {
        conBuildUnitMessDao.update(conBuildUnitMess);
    }

    @Override
    public void delUpdate(String id) {
        conBuildUnitMessDao.delUpdate(id);
    }

    @Override
    public List<ConBuildUnitMess> queryAll(ConBuildUnitMess conBuildUnitMess) {
        return conBuildUnitMessDao.queryAll(conBuildUnitMess);
    }

    @Override
    public int queryCountAll() {
        return conBuildUnitMessDao.queryCountAll();
    }
}
